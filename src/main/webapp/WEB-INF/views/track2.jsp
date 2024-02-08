<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <style>
        .content-box {
            background: #fff;
            background-clip: padding-box;
            border: 1px solid;
            border-radius: 5px;
            color: #545454
        }
        
        .status-stepper-wrapper{
          padding: 5px;
        }
          
        .current-status{
          font-size: 18px;
          text-align: center;
        }
        
          .stepper-list{
            width: 100%;
          }
          
          .stepper-list li {
            list-style-type: none;
            float: left;
            width: 25%;
            position: relative;
            text-align: center;
        }
        
        .stepper-list li:before {
            content: " ";
            line-height: 30px;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            border: 1px solid #ddd;
            display: block;
            text-align: center;
            margin: 0 auto 10px;
            background-color: white
        }
        
        .stepper-list li:after {
            content: "";
            position: absolute;
            width: 100%;
            height: 2px;
            background-color: #ddd;
            top: 15px;
            left: -50%;
            z-index: 1;
        }
        
        .stepper-list li:first-child:after {
            content: none;
        }
        
        .stepper-list li.active {
            color: dodgerblue;
        }
        
        .stepper-list li.active:before {
            border-color: dodgerblue;
            background-color: dodgerblue
        }
        
        .stepper-list li.active + li:after {
            background-color: dodgerblue;
        }
          
        
          
        .order-tracking-wrapper {
            padding: 1.14286em;
            position: relative;
            zoom: 1
        }
        
        .tracker-name {
            font-size: 24px;
            text-transform: capitalize;
            text-align: center;
            padding-bottom: 20px;
        }
        
        .tracker-scan-list {
            width: 100%;
            margin: 0 auto;
            padding: 5px
        }
        
        .scan-details {
            position: relative;
            display: flex;
            justify-content: space-between;
            width: 600px;
            margin: 0 auto
        }
        
        .time-details {
            width: 25%;
            padding: 10px
        }
        
        .date {
            font-size: 20px;
            color: #3f82ea;
            padding-bottom: 5px;
        }
        
        .location-details {
            width: 50%;
            padding: 10px
        }
        
        .track-status {
            max-width: 220px;
            font-weight: 600;
            padding-bottom: 5px
        }
        
        .divider {
            width: 1px;
            background-color: #a0a0a0
        }
        
        .timeline-dot {
            width: 15px;
            height: 15px;
            position: absolute;
            border-radius: 50%;
            background-color: #197bbd;
            left: 217px;
            top: 40%
        }
        </style>
   		
        <div class="content-box">
          <div class='status-stepper-wrapper'>
            <p class="current-status" id="current-status"><h2>Succesfully Requested for Account Deletion</h2></p>
            <p class="current-status" id="current-status"><h1>Account Status</h1></p>
            <ul class='stepper-list'>
              <li class='active'>Applied</li>
              <li class=''>Admin Approval Pending</li>
              
              <!-- <li class="active">Delivered</li> -->
            </ul>
          </div>
            <div class="order-tracking-wrapper">
                <p class="tracker-name" id="tracker-name"></p>
                <div class="tracker-scan-list" id="tracker-scan-list"></div>
            </div>
        </div>
</body>
</html>