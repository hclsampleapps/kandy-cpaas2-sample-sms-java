<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>SMS | Home</title>

  <link rel="stylesheet" type="text/css" href="css/main.css">
  <script src="scripts/notification.js"></script>
</head>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>SMS | Home</title>

    <link rel="stylesheet" type="text/css" href="css/main.css">
    <script src="scripts/notification.js"></script>
</head>

<body>
  <%@ include file="alert.jsp" %>
  <div>
     <div class="split left">
                <h2>Send SMS</h2>
                <form action="/send" method="post">
                    <div>
                        <li>
                            <label for="number">Phone number (E164 format) : </label>
                            <input type="text" name="number" id="number" placeholder="+12223334444" />
                        </li>
                        <li>
                            <label>Message : </label>
                            <input type="text" name="message" id="message" />
                        </li>
                    </div>
                    <button type="submit">Send</button>
                    </br>
                </form>
            </div>
   <div class="split right">
                <h2>SMS Notification</h2>
                <form action="/subscribe" method="post">
                    <div>
                        <li>
                            <label for="webhook">Webhook host URL(Ref. README for details) : </label>
                            <input type="text" name="webhook" id="webhook" />
                        </li>
                    </div>
                    <button type="submit">Subscribe</button>
                </form>

                <div id="notification" class="box"></div>
            </div>
  </div>
  <script>
    if (window.smsNotification) {
      setInterval(window.smsNotification.render, 5000)
    }
  </script>
</body>
</html>