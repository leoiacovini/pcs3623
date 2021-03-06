package models

import java.util.UUID

import org.joda.time.DateTime
import play.api.libs.json.{Format, Json, Writes}
import scalikejdbc.WrappedResultSet
import traits.DatabaseModel

/**
  * Created by leoiacovini on 11/30/16.
  */
case class Event(name: String, description: String, recurrence: String, startTime: DateTime, endTime: DateTime,
                 scheduledBy: UUID = null, roomId: Long = 0L, id: Long = 0L) { }

object Event extends DatabaseModel[Event]("events") {

  implicit val format: Format[Event] = Json.format[Event]

  override def apply(rn: scalikejdbc.ResultName[Event])(rs: WrappedResultSet): Event = new Event(
    rs.get(rn.name), rs.get(rn.description), rs.get(rn.recurrence), rs.get(rn.startTime), rs.get(rn.endTime),
    UUID.fromString(rs.string(rn.scheduledBy)), rs.get(rn.roomId), rs.get(rn.id))

  override def apply(rs: WrappedResultSet): Event = new Event(rs.string("name"), rs.string("description"), rs.string("recurrence"),
    rs.jodaDateTime("start_time"), rs.jodaDateTime("end_time"), UUID.fromString(rs.string("scheduled_by")), rs.long("room_id"), rs.long("id"))

}
