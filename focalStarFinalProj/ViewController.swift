import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    let months:[String] = ["January","February","March","April","May","June","July","August","September","October","November","December"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
            let date = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat =  "hh:mm a"
            let currentTime = dateFormatter.string(from: date)
            dateFormatter.dateFormat = "MM/dd/yyyy"
            let calendar = Calendar.current
            let month = calendar.component(.month, from: date)
            let day = calendar.component(.day, from: date)
            let monthInWords = self.months[month - 1]
            var dayString = String(day)
            let lastChar = dayString.last!
            if lastChar == "1" {
                dayString = dayString + "st"
            } else if lastChar == "2" {
                dayString = dayString + "nd"
            } else if lastChar == "3" {
                dayString = dayString + "rd"
            } else {
                dayString = dayString + "th"
            }
            let year = calendar.component(.year, from: date)
            let currentDate = "\(monthInWords) \(dayString), \(year)"
            self.timeLabel.text = currentTime
            self.dateLabel.text = currentDate
        }
    }
 }





