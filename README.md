# Online Eğitim Otomasyonu

## Proje Ekibi
- **220260023** - Abdulkadir Karataş  
- **220260065** - Ömer Erginoğuz  
- **220260037** - Ahmet Melik Yıldırım  

---

## Gereksinimler

### Öğrenci Gereksinimleri
| Gereksinim                      | Açıklama                                                                 |
|---------------------------------|--------------------------------------------------------------------------|
| **Kursları Görüntüleme**         | Öğrenci, tüm kursları görüntüleyebilir.                                   |
| **Kurs Kaydı Yapma**             | Öğrenci, ilgilendiği kurslara kayıt olabilir.                             |
| **Satın Alma İşlemleri**         | Öğrenci, kurs satın alma işlemlerini gerçekleştirebilir.                  |
| **İçeriklere Erişim**            | Öğrenci, satın aldığı veya kayıt olduğu kursların içeriklerine erişebilir. |
| **Sertifika Görüntüleme**        | Öğrenci, tamamladığı kurslardan aldığı sertifikaları görüntüleyebilir.    |
| **Değerlendirme Yapma**          | Öğrenci, katıldığı kursları değerlendirebilir ve yorum yapabilir.         |

### Eğitmen Gereksinimleri
| Gereksinim                      | Açıklama                                                             |
|---------------------------------|----------------------------------------------------------------------|
| **Kurs Ekleyebilme**             | Eğitmen, sistemde yeni kurslar oluşturabilir.                        |
| **İçerik Yükleyebilme**          | Eğitmen, kurs içeriklerini sisteme yükleyebilir.                     |
| **Kategori ve Alt Kategori Düzenleme** | Eğitmen, kursların kategorilerini ve alt kategorilerini düzenleyebilir. |
| **Kullanıcı Yönetimi**           | Eğitmen, kullanıcı bilgilerini görüntüleyebilir ve yönetebilir.      |
| **Sertifika Düzenleme**          | Eğitmen, tamamlanan kurslara sertifika tanımlayabilir.               |

### Yönetici Gereksinimleri
| Gereksinim                      | Açıklama                                                             |
|---------------------------------|----------------------------------------------------------------------|
| **Kullanıcı Yönetimi**           | Yönetici sistemdeki tüm kullanıcıları görüntüleyebilir, düzenleyebilir ve silebilir. |
| **Kurs Yönetimi**                | Yönetici, tüm kursları görüntüleyebilir, düzenleyebilir ve silebilir.                  |
| **Satın Alma Geçmişi Görüntüleme** | Yönetici, kullanıcıların satın alma geçmişlerini görüntüleyebilir.                     |
| **Raporlama ve İstatistik**      | Yönetici, kurs istatistiklerini ve raporlarını görebilir.                             |
| **İçerik ve Kategori Yönetimi**  | Yönetici, kategoriler ve alt kategorilerde düzenlemeler yapabilir.                   |
| **Yorum Yönetimi**               | Yönetici, kurslara yapılan yorumları yönetebilir.                                     |

---

## E-R Diyagramı

Aşağıda sistemin varlıkları ve ilişkilerini temsil eden E-R diyagramı bulunmaktadır:

![E-R Diyagramı](Ekran%20g%C3%B6r%C3%BCnt%C3%BCs%C3%BC%202025-01-05%20164110.png)

---

## Varlık ve İlişkiler

| Varlık             | Özellikler                                                  | İlişkiler                                                                                                                                                                                                                                        |
|--------------------|-------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Users**          | `id`, `first_name`, `last_name`, `email`, `password`, `role_id`, `reg_date`, `address_id` | - Sahiptir (UserRoles): Bir kullanıcı birden fazla role sahip olabilir. (1:N) <br> - Bağlantı (Enrollments): Kullanıcılar kurslara kayıt olabilir. (1:N) <br> - Alır (Certificates): Bir kullanıcı birden fazla sertifika alabilir. (1:N) |
| **Roles**          | `id`, `name`, `normalized_name`                             | - Bağlantı (Users): Kullanıcıların rollerini tanımlar. (1:N) <br> - Bağlantı (RolePermissions): Roller, belirli yetkilere sahip olabilir. (1:N) |
| **Permissions**    | `id`, `permission_name`, `description`                      | - Bağlantı (RolePermissions): Yetkiler, rollere atanabilir. (1:N) |
| **RolePermissions**| `role_id`, `permission_id`                                  | - Bağlantı (Roles ve Permissions): Rollerin yetkilerini tanımlar. (N:M) |
| **Courses**        | `id`, `course_name`, `description`, `instructor_id`, `price`, `categories_id` | - İçerir (CourseContent): Bir kurs birden fazla içerik barındırabilir. (1:N) <br> - Alır (CourseReviews): Bir kurs birden fazla yorum alabilir. (1:N) <br> - Kategoriye Aittir (Categories ve SubCategories): Bir kurs bir kategoriye veya alt kategoriye ait olabilir. (1:N) |
| **CourseContent**  | `id`, `course_id`, `title`, `file_path`, `type`             | - Bağlantı (Courses): İçerikler, bir kursa aittir. (1:N) |
| **CourseReviews**  | `id`, `course_id`, `user_id`, `rating`, `review`, `review_date` | - Bağlantı (Courses ve Users): Bir kursun değerlendirilmesini sağlar. (N:M) |
| **Certificates**   | `id`, `user_id`, `course_id`, `issue_date`, `certificate_code`, `status` | - Bağlantı (Users ve Courses): Kullanıcıların aldıkları sertifikaları tanımlar. (N:M) |
| **Purchase**       | `id`, `user_id`, `course_id`, `payment_amount`, `payment_date` | - Bağlantı (Users ve Courses): Kurs satın alma işlemlerini tanımlar. (N:M) |
| **Enrollment**     | `id`, `user_id`, `course_id`, `enrollment_date`             | - Bağlantı (Users ve Courses): Kullanıcıların kursa kayıtlarını tanımlar. (N:M) |
| **Categories**     | `id`, `categories_name`, `description`                      | - İçerir (SubCategories): Bir kategori birden fazla alt kategoriye sahip olabilir. (1:N) |
| **SubCategories**  | `id`, `categories_id`, `sub_categories_name`, `description` | - İçerir (Courses): Alt kategoriler birden fazla kurs içerebilir. (1:N) |
| **UserAddresses**  | `user_id`, `address_id`                                     | - Bağlantı (Users ve Address): Kullanıcı adreslerini tanımlar. (N:M) |
| **Address**        | `id`, `city`, `district`, `address_details`                 | - Bağlantı (Users ve UserAddresses): Kullanıcı adres bilgilerini tanımlar. (1:N) |
| **User_User_Similarity** | `user_id`, `similar_user_id`, `similarity`            | - Bağlantı (Users): Kullanıcılar arasındaki benzerlik skorunu tanımlar. (N:M) |

---

## İlişki Özeti Tablosu

| Tablo 1             | Tablo 2             | Arasındaki İlişki |
|---------------------|---------------------|--------------------|
| Users               | Courses             | 1-N               |
| Users               | Certificates        | 1-N               |
| Users               | Enrollment          | 1-N               |
| Users               | CourseReviews       | 1-N               |
| Users               | UserAddresses       | 1-N               |
| Users               | User_User_Similarity| N-M               |
| Courses             | CourseContent       | 1-N               |
| Courses             | CourseReviews       | 1-N               |
| Courses             | Purchases           | 1-N               |
| Courses             | Enrollment          | 1-N               |
| Categories          | SubCategories       | 1-N               |
| SubCategories       | Courses             | 1-N               |
| Roles               | Permissions         | N-M               |
| UserRoles           | Roles               | 1-N               |
| Address             | UserAddresses       | 1-N               |

---
