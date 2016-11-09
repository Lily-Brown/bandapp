#BandWagon

BandWagon is an application that allows bands and musicians to find each other. Users can sign up and log in as a Band or a Musician, view/edit their profile and browse either Bands or Musicians (whichever they're looking for!). Users then have the option to Connect with Bands/Musicians and start the communications rolling in!



##Technologies Used <br>
Ruby 2.3.0 <br>
Rails 5.0.0.1 <br>
Javascript 5.1 <br>
Html 5 <br>
CSS 3 <br>



##Frameworks, libraries, and gems <br>
Turbolinks 5.0.1<br>
Jquery-Rails 4.2.1<br>
Rspec-Rails 3.5.2<br>
Shoulda-Matchers 3.1.1<br>
Mp3_Player 0.1.1<br>
Paperclip 5.1.0<br>
BCrypt 3.1.11<br>
Friendly_id 5.1.0<br>
Imagemagick 7.0.3<br>




##Database <br>
Postgresql



## Data Models
<img src='https://lh3.googleusercontent.com/-4JsB928H8YxlR5l1Ygq7fH91-x85i7k0s4WZCDCTS86Jkw4BGCUbop_55InkZQl_zC13FbQUCAtfe3jhs1lwICzQCQl779iA56DVWxOIq-MLgV9qS5FK1JSdqh2Gz0P3O1Hqw8hnDLCKnDkqILgmM9x2mNKzTRdFLVVyYBcI7y_wY6M8hywiB_sKQFe_erjww24IrNV11GuOl-Qb6yDkIwWcIdDtMbHO8pZR1WHnsI5ZvgmBezugeeFgvgOkdPqfRBgIh-Vatq_yTjgaBCXthWvJ0TBSz1Fr3aKhMkENiCbT5AOX5TK2r2YNq6CHbCm7ENNnzyD-0ltDOrzTN68CGmHMtfeAo3WgCOzwsUV5sTJAWjuXPp44eDN90HMCAsjkYBV-aOZnr1V8BbOXETK1W8X5PBojGnIZ1snaqlalijXI8L_WN6VAI-xaa6OgYEGM63494uMx4mq7N0v0EK2OcJ8_H9B4g6SYmctEdJrT5kcHyMEwysdie7Ha8VWzOOq2kt1r5LCB-Et40279hNxQSlhS4ZTb1Gvj9EM73zp9a-qsmDIphAp-whngbqwKOGaDjUYVqE0=w2554-h1398' height='500'>



## User Stories and Dev Workflow
Trello: https://trello.com/b/5EE8Rz51/bandwagon



## Wireframes
https://app.moqups.com/k.bushman/ZFgDqhSRw6/view



## Some Challenges

Adding Instrument to Musician
```
<%= f.collection_check_boxes( :instrument_ids, Instrument.all, :id, :instrument_name, {:prompt => "Please Select a Sector"}, {:multiple => true}) do |b| %>
  <%= b.label class:"label-checkbox" do%>
  <%= b.check_box + b.text %>
  <% end %>
<% end %>
```
Creating Triple Join Model Relationships
```
class BandInstrumentMusiciansController < ApplicationController
  before_action :is_owner, only: [:update, :destroy]
```
```
  def update
    @opening = BandInstrumentMusician.find(params[:id])
    musician = Musician.find(session[:musician_add])
    @opening.musician = musician
    if @opening.save
      flash[:success] = "#{musician.name} has been added to your band!"
      redirect_to band_path(@opening.band)
    else
      flash[:error] = "Error adding musician to band."
      redirect_to musician_path(musician)
    end
  end
```
```
  private

  def is_owner
  member_id = params['member_id'].nil? ? params['id'].to_i : params['member_id'].to_i
  if current_musician != BandInstrumentMusician.find(member_id).band.owner
    flash[:error] = 'You do not have permission to perform this action'
    redirect_to :back
  end
end
```



## Future Features:
*Add search to display bands looking to fill an opening based on an instrument (current search only finds musician looking to play an instrument <br>
*Add inner-app messaging and/or chat capabilities <br>
*Enable "likes" for both musician and band pages <br>
*Create ability for user to log and display "favorite" musician or band <br>
*Allow user to add musician or band as a "friend" to further refine the user's network <br>
*Increase user media allowance so they can display multiple pics and audio samples <br>


##To deploy:

1 - Fork and clone repo <br>
2 - bundle <br>
3 - rake db:setup <br>
4 - Start using the website! <br>
