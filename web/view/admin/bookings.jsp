<jsp:include page="../header.jsp"/>
<jsp:include page="../nav_bar.jsp"/>

<%
    HttpSession sessionLogin = request.getSession(false);
    if (sessionLogin.getAttribute("accountType") == null) {
%>
<jsp:forward page="../admin/login.jsp"/>
<%
    }
%>

<style>
    table, th, td {
        border: 1px solid #b8b8b8;
        /*width: 100%;*/
    }

    th, td {
        padding: 5px;
        /*text-align: left;*/
    }
</style>

<section id="about" style="padding-top: 50px;padding-bottom: 90px">
    <div class="container-fluid" style="margin-left: 20px;margin-right: 20px">
        <div class="row" style="margin-top: 100px;font-size: 15px">
            <div class="col-sm-8" style="padding: 0px">
                <table width="100%">
                    <thead>
                    <tr>
                        <th width="15%" style="text-align: center">Date</th>
                        <th width="15%" style="text-align: center">Time</th>
                        <th width="60%" style="text-align: center">Reservation Number</th>
                        <th width="10%" style="text-align: center">View</th>
                    </tr>
                    </thead>
                    <tbody style="text-align: center">
                    <tr>
                        <td>2019-02-02</td>
                        <td>2019-02-02</td>
                        <td>2019-02-02</td>
                        <td><i class="fa fa-search"></i></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-sm-4" style="padding-left: 35px">
                <div class="row" style="border: 1px solid #b8b8b8;padding: 5px;color: #4b4b4b">
                    <div class="col-sm-12"
                         style="margin-top: 15px;margin-bottom:15px;text-align: center;font-size: 25px;color: black;font-weight: bold">
                        Taxi Details
                    </div>
                    <hr style="margin-left: 20px;margin-right: 20px;border: 0.5px solid #b8b8b8">
                    <div class="col-6" style="padding: 5px;border-bottom: 1px solid #e2e2e2;font-weight: bold">Pickup
                        From
                    </div>
                    <div class="col-6"
                         style="padding: 5px;text-align: right;font-weight: normal;border-bottom: 1px solid #e2e2e2"
                         id="fieldPickUpFrom">Not selected
                    </div>
                    <div class="col-6" style="padding: 5px;border-bottom: 1px solid #e2e2e2;font-weight: bold">Drop To
                    </div>
                    <div class="col-6"
                         style="padding: 5px;text-align: right;font-weight: normal;border-bottom: 1px solid #e2e2e2"
                         id="fieldDropTo">Not selected
                    </div>
                    <div class="col-6" style="padding: 5px;border-bottom: 1px solid #e2e2e2;font-weight: bold">Trip
                    </div>
                    <div class="col-6"
                         style="padding: 5px;text-align: right;font-weight: normal;border-bottom: 1px solid #e2e2e2"
                         id="fieldTrip">Not selected
                    </div>
                    <div class="col-6" style="padding: 5px;border-bottom: 1px solid #e2e2e2;font-weight: bold">Pickup
                        Date
                    </div>
                    <div class="col-6"
                         style="padding: 5px;text-align: right;font-weight: normal;border-bottom: 1px solid #e2e2e2"
                         id="fieldPickupDate">Not selected
                    </div>
                    <div class="col-6" style="padding: 5px;border-bottom: 1px solid #e2e2e2;font-weight: bold">Pickup
                        Time
                    </div>
                    <div class="col-6"
                         style="padding: 5px;text-align: right;font-weight: normal;border-bottom: 1px solid #e2e2e2"
                         id="fieldPickupTime">Not selected
                    </div>
                    <div class="col-6" style="padding: 5px;border-bottom: 1px solid #e2e2e2;font-weight: bold">Adults
                    </div>
                    <div class="col-6"
                         style="padding: 5px;text-align: right;font-weight: normal;border-bottom: 1px solid #e2e2e2"
                         id="fieldAdults">Not selected
                    </div>
                    <div class="col-6" style="padding: 5px;border-bottom: 1px solid #e2e2e2;font-weight: bold">
                        Children
                    </div>
                    <div class="col-6"
                         style="padding: 5px;text-align: right;font-weight: normal;border-bottom: 1px solid #e2e2e2"
                         id="fieldChildren">Not selected
                    </div>
                    <div class="col-6" style="padding: 5px;border-bottom: 1px solid #e2e2e2;font-weight: bold">Infants
                    </div>
                    <div class="col-6"
                         style="padding: 5px;text-align: right;font-weight: normal;border-bottom: 1px solid #e2e2e2"
                         id="fieldInfants">Not selected
                    </div>
                    <div class="col-6" style="padding: 5px;border-bottom: 1px solid #e2e2e2;font-weight: bold">No of
                        passengers
                    </div>
                    <div class="col-6"
                         style="padding: 5px;text-align: right;font-weight: normal;border-bottom: 1px solid #e2e2e2"
                         id="fieldNoOfPassengers">Not selected
                    </div>
                    <div class="col-6" style="padding: 5px;font-size: 30px;color: black;font-weight: bold">Total Cost
                    </div>
                    <div class="col-6"
                         style="padding: 5px;font-size: 30px;text-align: right;color: black;font-weight: bold">
                        &euro;<span
                            id="priceText">0.00</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="../footer.jsp"/>