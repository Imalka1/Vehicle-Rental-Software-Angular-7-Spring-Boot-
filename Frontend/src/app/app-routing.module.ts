import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {HeaderComponent} from "./views/common/header/header.component";
import {HomeComponent} from "./views/home/home.component";
import {SigninComponent} from "./views/auth/signin/signin.component";
import {BookingComponent} from "./views/booking/booking.component";
import {AdminPanelComponent} from "./views/admin-panel/admin-panel.component";
import {LoginGuard} from "./guards/login.guard";
import {PlacesComponent} from "./views/admin-panel/places/places.component";
import {VehiclesComponent} from "./views/admin-panel/vehicles/vehicles.component";
import {BookingsComponent} from "./views/admin-panel/bookings/bookings.component";
import {ViewBookingsComponent} from "./views/admin-panel/bookings/view-bookings/view-bookings.component";
import {DriversComponent} from "./views/admin-panel/drivers/drivers.component";
import {CarouselComponent} from "./views/common/carousel/carousel.component";

const routes: Routes = [
  {
    path: 'log-head',
    component: HeaderComponent,
    canActivate: [LoginGuard],
    children: [
      {
        path: 'admin',
        component: AdminPanelComponent,
        children: [
          {
            path: 'place',
            component: PlacesComponent
          },
          {
            path: 'vehicle',
            component: VehiclesComponent
          },
          {
            path: 'driver',
            component: DriversComponent,
          },
          {
            path: 'bookings',
            component: BookingsComponent,
          },
          {
            path: 'view-bookings',
            component: ViewBookingsComponent
          }
        ]
      },
    ]
  },
  {
    path: 'head',
    component: HeaderComponent,
    children: [
      {
        path: 'carousel',
        component: CarouselComponent,
        children: [
          {
            path: 'main',
            component: HomeComponent
          },
          {
            path: 'booking',
            component: BookingComponent
          },
          // {
          //   path: 'booking/:success',
          //   component: BookingComponent
          // },
          // {
          //   path: '/:success',
          //   component: BookingComponent
          // }
        ]
      },
      {
        path: 'signin',
        component: SigninComponent
      }
    ]
  },
  {path: '', pathMatch: "full", redirectTo: '/head/carousel/main'},
];

@NgModule({
  imports: [RouterModule.forRoot(routes, {useHash: true})],
  // imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
