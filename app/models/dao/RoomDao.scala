package models.dao

import misc.json.schemas.RegisterRoomSchema
import models.Room
import scalikejdbc._

class RoomDao {

  private val r = Room.syntax("r")

  def findBy(attribute: String, value: String)(implicit session: DBSession): Option[Room] = {
    withSQL {
      select.from(Room as r).where.eq(r.column(attribute), value)
    }.map(Room(r.resultName)).single().apply()
  }

  def findById(id: Long)(implicit session: DBSession): Option[Room] = withSQL {
    select.from(Room as r).where.eq(r.id, id)
  }.map(Room(r.resultName)).single().apply()

  def findAllFromBuilding(building: String)(implicit session: DBSession): List[Room] = {
    withSQL {
      select.from(Room as r).where.eq(r.building, building)
    }.map(Room(r.resultName)).list.apply()
  }

  def registerRoom(registerRoomSchema: RegisterRoomSchema)(implicit session: DBSession): Room = {
    val col = Room.column
    val id = withSQL {
      insert.into(Room).namedValues(
        col.name -> registerRoomSchema.name,
        col.department -> registerRoomSchema.department,
        col.size -> registerRoomSchema.size,
        col.building -> registerRoomSchema.building)
    }.updateAndReturnGeneratedKey().apply()
    registerRoomSchema.toRoom(id)
  }

  def allRoomsByBuilding(implicit session: DBSession): Map[String, List[Room]] = {
    val rooms = withSQL {
      select.from(Room as r)
    }.map(Room(r.resultName)).list.apply()
    val buildings: List[String] = rooms.map(r => r.building)
    buildings.foldLeft(Map[String, List[Room]]()) { (m, b) => m + (b -> rooms.filter(r => r.building == b)) }
  }

  def removeRoom(roomId: Long)(implicit session: DBSession): Unit = {
    sql"""DELETE FROM rooms WHERE id = ${roomId}""".executeUpdate.apply()
  }

}
