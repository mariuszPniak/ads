
package DB;


public class Ads {
    private String id_advert;
    private String id_user;

    
    private String category;
    private String subcategory;
    private String title;
    private String advert_date;
    private String price;
    private String content;
    private String premium;
    
    public Ads(){};
    
    public Ads(String id_advert, String id_user, String category, String subcategory, String title, String advert_date, String price, String content, String premium) {
        this.id_advert = id_advert;
        this.id_user = id_user;
        this.category = category;
        this.subcategory = subcategory;
        this.title = title;
        this.advert_date = advert_date;
        this.price = price;
        this.content = content;
        this.premium = premium;
    }
    
    public String getId_advert() {
        return id_advert;
    }

    public void setId_advert(String id_advert) {
        this.id_advert = id_advert;
    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSubcategory() {
        return subcategory;
    }

    public void setSubcategory(String subcategory) {
        this.subcategory = subcategory;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAdvert_date() {
        return advert_date;
    }

    public void setAdvert_date(String advert_date) {
        this.advert_date = advert_date;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPremium() {
        return premium;
    }

    public void setPremium(String premium) {
        this.premium = premium;
    }
    
    
}
