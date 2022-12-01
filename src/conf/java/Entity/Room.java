
package Entity;


public class Room {
    private int id;
    private String name;
    private int categoryID;
    private float price;
    private String images;
    private String description;
    private int quantity;
    private int sold;
    private int eventID;

    public Room(int id, String name, int categoryID, float price, String images, String description, int quantity, int sold, int eventID) {
        this.id = id;
        this.name = name;
        this.categoryID = categoryID;
        this.price = price;
        this.images = images;
        this.description = description;
        this.quantity = quantity;
        this.sold = sold;
        this.eventID = eventID;
    }

    public int getEventID() {
        return eventID;
    }

    public void setEventID(int eventID) {
        this.eventID = eventID;
    }

    public Room(int id, String name, int eventID, float price, String images, String description, int quantity) {
        this.id = id;
        this.name = name;
        this.eventID = eventID;
        this.price = price;
        this.images = images;
        this.description = description;
        this.quantity = quantity;

    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Room() {
    }

    public Room(int id, String name, int categoryID, float price, String images, String description, int quantity, int sold) {
        this.id = id;
        this.name = name;
        this.categoryID = categoryID;
        this.price = price;
        this.images = images;
        this.description = description;
        this.quantity = quantity;
        this.sold = sold;
    }


    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public Room(int id, String name, int categoryID, float price, String images, String description) {
        this.id = id;
        this.name = name;
        this.categoryID = categoryID;
        this.price = price;
        this.images = images;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", categoryID=" + categoryID + ", price=" + price + ", images=" + images + ", description=" + description + '}';
    }

    
}
