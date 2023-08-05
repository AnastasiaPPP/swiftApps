import UIKit

class ViewController: UIViewController {
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "Авторизация"
        label.backgroundColor = .brown
        label.textAlignment = .center
        return label
    }()
    
    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .gray
        return button
    }()
    
    let loginTextField: UITextField = {
            let textField = UITextField(frame: CGRect(x: 100, y: 400, width: 200, height: 200))
            textField.placeholder = "Логин"
            textField.textAlignment = .center
            textField.borderStyle = .roundedRect
            textField.backgroundColor = .gray
            return textField
        }()
    
    let passwordTextField: UITextField = {
            let textField = UITextField(frame: CGRect(x: 100, y: 400, width: 200, height: 200))
            textField.placeholder = "Пароль"
            textField.textAlignment = .center
            textField.borderStyle = .roundedRect
            textField.backgroundColor = .gray
            return textField
        }()
    
    private var imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "person"))
        imageView.frame = CGRect(x: 100, y: 400, width: 200, height: 200)
        imageView.backgroundColor = .green
        return imageView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)    }

    private func setupViews() {
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(button)
        setupConstraints()
    }
    
    private func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
                    label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    label.widthAnchor.constraint(equalToConstant: view.frame.size.width/1.5),
                    label.heightAnchor.constraint(equalToConstant: view.frame.size.width/4),
                    
                    imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                    imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width/1.5),
                    imageView.heightAnchor.constraint(equalToConstant: view.frame.size.width/2),

                    loginTextField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
                    loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    loginTextField.widthAnchor.constraint(equalToConstant: view.frame.size.width/1.5),
                    loginTextField.heightAnchor.constraint(equalToConstant: view.frame.size.width/6),
                    passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 20),
                    passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                passwordTextField.widthAnchor.constraint(equalToConstant: view.frame.size.width/1.5),
                    passwordTextField.heightAnchor.constraint(equalToConstant: view.frame.size.width/6),
                    button.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
                                button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                                button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),                ])}
    }
