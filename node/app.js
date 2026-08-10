const express = require('express');
const path = require('path');
const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public'));

let bookings = [];
let bookingIdCounter = 1;

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

app.get('/api/hotels', (req, res) => {
  const hotels = [
    { id: 1, name: 'Grand Hyatt', location: 'Mumbai', price: 4500, rating: 4.8, icon: 'fa-hotel' },
    { id: 2, name: 'Taj Palace', location: 'Delhi', price: 5200, rating: 4.9, icon: 'fa-building' },
    { id: 3, name: 'ITC Grand Chola', location: 'Chennai', price: 3800, rating: 4.7, icon: 'fa-hotel' },
    { id: 4, name: 'The Oberoi', location: 'Bangalore', price: 4900, rating: 4.8, icon: 'fa-building' },
    { id: 5, name: 'JW Marriott', location: 'Hyderabad', price: 4200, rating: 4.6, icon: 'fa-hotel' },
    { id: 6, name: 'Leela Palace', location: 'Jaipur', price: 3500, rating: 4.5, icon: 'fa-building' },
    { id: 7, name: 'Radisson Blu', location: 'Pune', price: 3100, rating: 4.4, icon: 'fa-hotel' },
    { id: 8, name: 'Hilton Garden', location: 'Goa', price: 2900, rating: 4.3, icon: 'fa-building' }
  ];
  res.json(hotels);
});

app.get('/api/bookings', (req, res) => {
  res.json(bookings);
});

app.post('/api/bookings', (req, res) => {
  const { hotelId, hotelName, guestName, checkIn, checkOut, rooms, totalPrice } = req.body;
  
  if (!hotelId || !guestName || !checkIn || !checkOut || !rooms || !totalPrice) {
    return res.status(400).json({ error: 'Missing required fields' });
  }

  const newBooking = {
    id: bookingIdCounter++,
    hotelId: parseInt(hotelId),
    hotelName,
    guestName,
    checkIn,
    checkOut,
    rooms: parseInt(rooms),
    totalPrice: parseFloat(totalPrice),
    bookingDate: new Date().toISOString().split('T')[0],
    status: 'Confirmed'
  };

  bookings.push(newBooking);
  res.status(201).json(newBooking);
});

app.delete('/api/bookings/:id', (req, res) => {
  const id = parseInt(req.params.id);
  const index = bookings.findIndex(b => b.id === id);
  
  if (index === -1) {
    return res.status(404).json({ error: 'Booking not found' });
  }

  bookings.splice(index, 1);
  res.json({ message: 'Booking cancelled successfully' });
});

app.use(express.static('public'));

app.listen(PORT, () => {
  console.log(`Goibibo server running on http://localhost:${PORT}`);
});