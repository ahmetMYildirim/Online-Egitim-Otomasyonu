# Online Eğitim Otomasyonu

### Proje Ekibindeki Kişiler:
- **220260023** - Abdulkadir Karataş  
- **220260065** - Ömer Erginoğuz  
- **220260037** - Ahmet Melik Yıldırım  

---

## Gereksinimler

### Öğrenci Gereksinimleri

| Gereksinim                      | Açıklama                                                                 |
|---------------------------------|--------------------------------------------------------------------------|
| **Kursları Görüntüleme**        | Öğrenci, tüm kursları görüntüleyebilir.                                  |
| **Kurs Kaydı Yapma**            | Öğrenci, ilgilendiği kurslara kayıt olabilir.                            |
| **Satın Alma İşlemleri**        | Öğrenci, kurs satın alma işlemlerini gerçekleştirebilir.                 |
| **İçeriklere Erişim**           | Öğrenci, satın aldığı veya kayıt olduğu kursların içeriklerine erişebilir.|
| **Sertifika Görüntüleme**       | Öğrenci, tamamladığı kurslardan aldığı sertifikaları görüntüleyebilir.   |
| **Değerlendirme Yapma**         | Öğrenci, katıldığı kursları değerlendirebilir ve yorum yapabilir.        |

### Eğitmen Gereksinimleri

| Gereksinim                        | Açıklama                                                                 |
|-----------------------------------|--------------------------------------------------------------------------|
| **Kurs Ekleyebilme**              | Eğitmen, sistemde yeni kurslar oluşturabilir.                           |
| **İçerik Yükleyebilme**           | Eğitmen, kurs içeriklerini sisteme yükleyebilir.                        |
| **Kategori ve Alt Kategori Düzenleme** | Eğitmen, kursların kategorilerini ve alt kategorilerini düzenleyebilir.|
| **Kullanıcı Yönetimi**            | Eğitmen, kullanıcı bilgilerini görüntüleyebilir ve yönetebilir.         |
| **Sertifika Düzenleme**           | Eğitmen, tamamlanan kurslara sertifika tanımlayabilir.                  |

### Yönetici Gereksinimleri

| Gereksinim                       | Açıklama                                                                 |
|----------------------------------|--------------------------------------------------------------------------|
| **Kullanıcı Yönetimi**           | Yönetici sistemdeki tüm kullanıcıları görüntüleyebilir, düzenleyebilir ve silebilir. |
| **Kurs Yönetimi**                | Admin, tüm kursları görüntüleyebilir, düzenleyebilir ve silebilir.      |
| **Satın Alma Geçmişi Görüntüleme** | Admin, kullanıcıların satın alma geçmişlerini görüntüleyebilir.         |
| **Raporlama ve İstatistik**      | Admin, kurs istatistiklerini ve raporlarını görebilir.                  |
| **İçerik ve Kategori Yönetimi**  | Admin, kategoriler ve alt kategorilerde düzenlemeler yapabilir.         |
| **Yorum Yönetimi**               | Admin, kurslara yapılan yorumları yönetebilir.                          |

---

## Varlık ve İlişkiler

| Varlık             | Özellikler                                                  | İlişkiler                                                                                                   |
|--------------------|-------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
| **Users**          | `id`, `first_name`, `last_name`, `email`, `password`, `role_id`, `reg_date`, `address_id` | Kullanıcıların temel bilgileri ve roller ile bağlantıları.                                                  |
| **UserAddresses**  | `user_id`, `address_id`                                     | Kullanıcılar ile adresleri arasındaki bağlantıyı sağlar.                                                   |
| **Address**        | `id`, `city`, `district`, `address_details`                 | Kullanıcı adres bilgilerini içerir.                                                                        |
| **User_User_Similarity** | `user_id`, `similar_user_id`, `similarity`            | Kullanıcılar arasında benzerlik oranını tutar.                                                             |
| **Roles**          | `id`, `name`, `normalized_name`                             | Kullanıcı rollerini tanımlar.                                                                              |
| **Permissions**    | `id`, `permission_name`, `description`                      | Sistem izinlerini tanımlar.                                                                                |
| **RolePermissions**| `role_id`, `permission_id`                                  | Roller ile izinleri bağlar.                                                                                |
| **UserRoles**      | `user_id`, `role_id`                                        | Kullanıcılar ve roller arasındaki bağlantıyı sağlar.                                                       |
| **Courses**        | `id`, `course_name`, `description`, `instructor_id`, `price`, `categories_id` | Kurs bilgilerini içerir ve kategorilerle ilişkilidir.                                                      |
| **CourseContent**  | `id`, `course_id`, `title`, `file_path`, `type`             | Kurs içeriklerini tanımlar.                                                                                |
| **CourseReviews**  | `id`, `course_id`, `user_id`, `rating`, `review`, `review_date` | Kurs yorumlarını ve puanlamalarını içerir.                                                                 |
| **Enrollments**    | `id`, `user_id`, `course_id`, `enrollment_date`             | Kullanıcıların kurslara kaydolmasını sağlar.                                                               |
| **Purchases**      | `id`, `user_id`, `course_id`, `payment_amount`, `payment_date` | Kullanıcıların kurs satın alma işlemlerini kaydeder.                                                      |
| **Certificates**   | `id`, `user_id`, `course_id`, `issue_date`, `certificate_code`, `status` | Kurs tamamlandığında verilen sertifikalar.                                                                 |
| **Categories**     | `id`, `categories_name`, `description`                      | Kurs kategorilerini tanımlar.                                                                              |
| **SubCategories**  | `id`, `categories_id`, `sub_categories_name`, `description` | Alt kategorileri içerir.                                                                                   |

---

## İlişki Özeti Tablosu

| Tablo 1           | Tablo 2               | Arasındaki İlişki |
|--------------------|-----------------------|--------------------|
| **Users**          | **UserAddresses**    | 1:N               |
| **UserAddresses**  | **Address**          | N:1               |
| **Users**          | **User_User_Similarity** | 1:N           |
| **Users**          | **Roles**            | N:M               |
| **Users**          | **UserRoles**        | 1:N               |
| **Roles**          | **Permissions**      | N:M               |
| **RolePermissions**| **Roles**            | N:1               |
| **Users**          | **Courses**          | 1:N               |
| **Courses**        | **Enrollments**      | 1:N               |
| **Courses**        | **Purchases**        | 1:N               |
| **Courses**        | **Certificates**     | 1:N               |
| **Categories**     | **SubCategories**    | 1:N               |
| **SubCategories**  | **Courses**          | 1:N               |

---

## E-R Diyagramı

![E-R Diyagramı](./Ekran%20görüntüsü%202025-01-05%20164110.png)
