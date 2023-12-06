using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace study
{
    public partial class lenght : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string t = " kính thưa Đại hội, kính thưa quý đại biểu, quý thầy cô giáo, cùng toàn thể các bạn sinh viên thân mến! Tôi tên là Nguyễn Đắc Lợi, sinh viên chi đoàn CH2Đ11, hôm nay em rất vinh dự được đại diện cho các bạn sinh viên trong chi đoàn báo cáo tình hình học tập của chi đoàn trong năm học 2013 - 2014 và đưa ra một số mục tiêu và phương hướng học tập cho năm học 2014 - 2015.Sau đây tôi xin được báo cáo sơ qua về tình hình học tập của chi đoàn trong nămhọc 2013 - 2014.Trong năm học vừa qua, với sự cố gắng rèn luyện, học tập “Vì ngày mai lập nghiệp”. Các bạn sinh viên trong chi đoàn đã tự ý thức việc học của mình đồng  thời cũng đã giúp đỡ các bạn khác trong chi đoàn hoàn thành chương trình học và đã đạt đượ c k ết quả tốt: Trong đó có: 15 % sinh viên đạt giỏi 45 % sinh viên đạt khá40 % sinh viên đạt trung bìnhBên cạnh những sinh viên ý thức được việc học còn một số ít các bạn vẫn chưa ý thức được việc học cho mình vậy nên vẫn còn lười học , trong lớp vẫn chưa tập trung nghe giảng và còn làm việc riêng.Với những hạn chế như vậy là một vật cản rất lớn trước mặt các bạn để có thể tốt nghiệp.Bước sang năm học mới, cũng là năm học cuối cùng trong trường sau đó chúng ta sẽ bước vào một con đường hoàn toàn mới và khó khăn mới.Và trong năm học cuối này tôi cũng đặt ra một số mục tiêu cho chi đoàn mong được các bạn và quý thầy cô giáo giúp đỡ tạo điều kiện.Về học tập xếp loại các bạn sinh viên trong lớp:5 % sinh viên đạt xuất sắc 20% sinh viên đạt giỏi 50% sinh viên đạt khá 25% sinh viên đạt trung bìnhBên cạnh đó mong rằng 100% các bạn sinh viên hoàn thành tốt các k ỳ thi ngay ở  lần 1, bảo vệ thành công đồ án chuyên ngành cũng như đồ án tốt nghiệp cùng với các chương trình học khác.Với những mục tiêu đề ra như vậy, để có thể hoàn thành đượ c thì tất cả các bạn sinh viên phải tự ý thức đượ c việ c học cho mình, cố gắng tự học hỏi tìm tòi tài liệu tham khảo, tổ chức các nhóm tự học để giúp đỡ  nhau trong học tập , ngoài ra cũng mong các thầy cô giáo, cùng nhà trường tổ chức cho sinh viên chúng em những buổi ngoại khóa : tổ chức những buổi thuyết giả ng của các thầy cô, tổ chức chosinh viên những buổi đi kiến tập,tham quan thực tế các nhà máy để sinh viên chúngem có thêm vốn kiến thức phục vụ cho quá trình học tập.Trên đây là báo cáo tình hình học tập của chi đoàn năm học cũ và một số mục tiêuvà cách thực hiện mục tiêu trong năm học mới. Với nhũng ý kiến cá nhân như vậy,tôi mong nhận đượ c ý kiến đóng góp của quý đại biểu, quý thầy cô và các bạn để tôi có thể hoàn thiện hơn bài viết của mình.Cuối cùng tôi xin k ính chúc quý đại biểu, quý thầy cô mạnh khỏe. Các bạn sinhviên học tập đạt k ết quả tốt và xin chúc đại hội của chúng ta thành công tốt đẹp.Tôi xin chân thành cám ơn!";
            t = t.Trim(); // xóa các khoảng trắng vô nghĩ ở 2 đầu
            int count = 1;
            for (int i = 1; i < t.Length; i++)
                if (t[i] == ' ' && t[i - 1] != ' ')
                    count++;


            TextBox1.Text = count.ToString();
        }
    }
}