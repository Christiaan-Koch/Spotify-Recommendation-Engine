package entities;

import general.Identifiable;
import lombok.Data;
import org.hibernate.annotations.Nationalized;
import org.springframework.stereotype.Component;

import javax.persistence.AttributeOverride;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Component
@Entity
@Data
@Table(name = "SpotifyUser")
@AttributeOverride(name = "Id", column = @Column(name = "UserID"))
public class SpotifyUser extends Identifiable {
    @Nationalized
    String email;
    String userPassword;
}
