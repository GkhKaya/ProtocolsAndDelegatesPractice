protocol AdvanceLifeSupport {
    func performCPR()
}

class EmergencyCallHandler{
    var delegate : AdvanceLifeSupport?
    
    func assessSitution(){
        print("Can you tell me what happend")
    }
    
    func medicalEmergency(){
        delegate?.performCPR()
    }
    
}
struct Paramedic: AdvanceLifeSupport{
    
   
    
    func performCPR() {
        print("The paramedic does chest compression, 30 per second")
    }
    
    
}

class Doctor:AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compression, 30 per second")
    }
    
    func useStethescope(){
        print("Listening for heart sounds")
    }
}

class Surgeon:Doctor{
    
    override func performCPR(){
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    func useElectricDrill(){
        print("Whirr....")
    }
    
    
}

let emilio = EmergencyCallHandler()
let angela = Surgeon(handler: emilio)


emilio.assessSitution()

emilio.medicalEmergency()


