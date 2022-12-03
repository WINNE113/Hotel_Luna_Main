
package Entity;

import java.util.Date;


public class Events {
    private int id;
    private String title;
    private String images;
    private String details; 
    private float percent;
    public Events() {
    }

    public Events(int id, String title, String images, String details, float percent) {
        this.id = id;
        this.title = title;
        this.images = images;
        this.details = details;
        this.percent = percent;
    }

    
    
    
    public float getPercent() {
        return percent;
    }

    public void setPercent(int percent) {
        this.percent = percent;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    @Override
    public String toString() {
        return "Events{" + "id=" + id + ", title=" + title + ", images=" + images + ", details=" + details + ", percent=" + percent + '}';
    }



    
    
   
    
}
