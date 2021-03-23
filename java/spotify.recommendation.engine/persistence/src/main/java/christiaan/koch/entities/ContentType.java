package entities;

import general.Identifiable;
import lombok.Data;
import org.springframework.stereotype.Component;

import javax.persistence.*;

@Component
@Entity
@Data
@Table(name = "ContentType")
@AttributeOverride(name = "Id", column = @Column(name = "ContentTypeID"))
public class ContentType extends Identifiable {
    String description;
}
