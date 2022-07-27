

import UIKit
import SnapKit
class ViewController: UIViewController {
    
    private lazy var btnAdd:UIButton = {
        let btn = UIButton()
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(add), for: .touchUpInside)
        btn.setImage(UIImage(named: "btn"), for: .normal)
       return btn
    }()
    private lazy var btnAddBamboo:UIButton = {
        let btn = UIButton()
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(addBaMBO), for: .touchUpInside)
        btn.setImage(UIImage(named: "Bamboo"), for: .normal)
       return btn
    }()
    private lazy var btnAddCactus:UIButton = {
        let btn = UIButton()
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(addCactus), for: .touchUpInside)
        btn.setImage(UIImage(named: "Cactus"), for: .normal)
       return btn
    }()
    @objc func add(){
        print("clicked to ADD")
        
    }
    @objc func addCactus(){
        
        print("clicked to ADDcACTUS")
        let vc = CactusVC()
        show(vc, sender: nil)
       // navigationController?.show(<#T##vc: UIViewController##UIViewController#>, sender: <#T##Any?#>)
//
    }
    @objc func addBaMBO(){
        print("clicked to ADDBABMO")
        let vc = BamboVC()
        show(vc, sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = .white
//        navigationItem.title = "My Plants"
//        print("-----")
        setup()
    }
    private func setup(){
        self.view.backgroundColor = .white
        let label = UILabel()
        self.view.addSubview(label)
        label.text = "My Plants"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(56)
        }
        
        let iconAdd = UIImageView()
        self.view.addSubview(iconAdd)
        iconAdd.image = UIImage(named: "ic_add")
        iconAdd.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-21)
            make.top.equalToSuperview().offset(61)
        }
        
        let iconSearch = UIImageView()
        self.view.addSubview(iconSearch)
        iconSearch.image = UIImage(named: "ic_search")
        iconSearch.snp.makeConstraints { make in
            make.right.equalTo(iconAdd.snp.left).offset(-30)
            make.bottom.equalTo(iconAdd.snp.bottom)
        }
        let label2 = UILabel()
        self.view.addSubview(label2)
        label2.text = "Popular plants"
        label2.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label2.textColor = .black
        label2.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(label.snp.bottom).offset(19)
        }
        let label2ViewAll = UILabel()
        self.view.addSubview(label2ViewAll)
        label2ViewAll.text = "View all"
        label2ViewAll.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label2ViewAll.textColor = .systemGreen
        label2ViewAll.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalTo(label2.snp.bottom)
        }
        let iconPlant1 = UIImageView()
        self.view.addSubview(iconPlant1)
        iconPlant1.image = UIImage(named: "Plant 1")
        iconPlant1.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(label2.snp.bottom).offset(38)
        }
        
        let iconPlant2 = UIImageView()
        self.view.addSubview(iconPlant2)
        iconPlant2.image = UIImage(named: "Plant 2")
        iconPlant2.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(label2.snp.bottom).offset(38)
        }
        let iconVector = UIImageView()
        self.view.addSubview(iconVector)
        iconVector.image = UIImage(named: "Vector")
        iconVector.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-20)
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(iconPlant1.snp.bottom).offset(24)
        }
        let iconCategori = UIImageView()
        self.view.addSubview(iconCategori)
        iconCategori.image = UIImage(named: "Categories")
        iconCategori.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(iconVector.snp.bottom).offset(24)
        }
        let iconVector2 = UIImageView()
        self.view.addSubview(iconVector2)
        iconVector2.image = UIImage(named: "Vector")
        iconVector2.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-20)
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(iconCategori.snp.bottom).offset(24)
        }

        let label3 = UILabel()
        self.view.addSubview(label3)
        label3.text = "Tutorials for today"
        label3.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label3.textColor = .black
        label3.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(iconVector2.snp.bottom).offset(19)
        }
        let label3ViewAll = UILabel()
        self.view.addSubview(label3ViewAll)
        label3ViewAll.text = "View all"
        label3ViewAll.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label3ViewAll.textColor = .systemGreen
        label3ViewAll.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalTo(label3.snp.bottom)
        }
        btnAddCactus.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(label3.snp.bottom).offset(24)
        }
        btnAddBamboo.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(btnAddCactus.snp.bottom).offset(24)
        }
        btnAdd.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }
    }

}

