package lk.vrs.repository;

import lk.vrs.entity.Place;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PlaceRepository extends CrudRepository<Place, Integer> {

    @Query(value = "SELECT placeId,placeName FROM Place WHERE category=?1")
    List<Object[]> getPlacesViaCategory(String category);

}
