
public class booking {
    int booking_id;
    int car_id;
    int price_per_day;
    String start_date;
    String end_date;
    int no_of_days;
    int total_rent;
    String name;
    String mobile_no;
    String address;
    String email;
    String payment_status;
    String booking_status;

    public booking(int booking_id, int car_id, int price_per_day, String start_date, String end_date, int no_of_days, int total_rent, String name, String mobile_no, String address, String email, String payment_status, String booking_status) {
        this.booking_id = booking_id;
        this.car_id = car_id;
        this.price_per_day = price_per_day;
        this.start_date = start_date;
        this.end_date = end_date;
        this.no_of_days = no_of_days;
        this.total_rent = total_rent;
        this.name = name;
        this.mobile_no = mobile_no;
        this.address = address;
        this.email = email;
        this.payment_status = payment_status;
        this.booking_status = booking_status;
    }
}
