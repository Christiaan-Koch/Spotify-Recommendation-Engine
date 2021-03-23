package entities;

import general.Identifiable;
import lombok.Data;
import org.hibernate.annotations.Nationalized;
import org.springframework.stereotype.Component;

import javax.persistence.*;

@Component
@Entity
@Data
@Table(name = "IncludedContent")
@AttributeOverride(name = "Id", column = @Column(name = "ContentID"))
public class IncludedContent extends Identifiable {
    @ManyToOne
    @JoinColumn(name = "UserID", nullable = false)
    SpotifyUser user;

    @Nationalized
    String name;

    @ManyToOne
    @JoinColumn(name = "ContentTypeID", nullable = false)
    ContentType contentType;
}
