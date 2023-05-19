@extends('master')
@section('content')
    <div class="homee">
        <div class="desc">
            <h3>Tentang Kami</h3><br>
            <br>
            <p >
                <img src="{{asset('asset/QuizSan.png')}}" alt="" width="60" height="20">
                merupakan aplikasi kuis berbasis web yang digunakan untuk
                membantu calon peserta sekolah kedinasan melatih soal-soal yang berhubungan dengan tes
            </p>
        </div>
        <div class="icon-img-small">
            <img src="{{asset('asset/ICON 1.png')}}" width="450" height="320" alt="">
        </div>
    </div>  
@endsection

@section('about')
    <!-- about -->
<section class="about">
    <div class="container">
        <h2>Latar Belakang</h2><br>
        <p>Aplikasi ini adalah aplikasi yang berisi soal-soal kedinasan, dengan menjawab pertanyaan-pertanyaan 
            yang ada pada aplikasi tersebut. nantinya akan dapat membantu calon taruna/i. Untuk merangsang minat catar,
            pada aplikasi ini akan dibuat dengan tampilan yang menarik, seperti pemanfaatan grafis, gambar, warna, yang 
            sudah disaring untuk para catar.Pertanyaan-pertanyaan yang ditampilkan dalam quiz ini mempunyai beberapa tipe
            soal yaitu TIU,TKP, dan TWK.</p>
    </div>
    </section>
    
    <!--services -->
    <section class="services">
    <div class="container">
        <h2>Quizsan</h2>
        <h3>DEVELOPERS</h3>
        <div class="boxx">
            <div class="col-4">
                <div class="icon"><img src="{{asset('asset/Nisa.jpg')}}"width="100" height="100"></i></div>
                <h4>Khairunnisa At-tharfi'in 2008001010007</h4>
            </div>
            <div class="col-4">
                <div class="icon"><img src="{{asset('asset/Zahra.jpg')}}"width="100" height="100"></i></div>
                <h4>Sitti Fatimah Az-Zahra 2008001010005</h4>
            </div>
            <div class="col-4">
                <div class="icon"><img src="{{asset('asset/Vina.jpg')}}"width="100" height="100"></i></div>
                <h4>Shavinatun Husna Dewi 2008001010016</h4>
            </div>
            <div class="col-4">
                <div class="icon"><img src="{{asset('asset/Tara.jpg')}}"width="100" height="100"></i></div>
                <h4>Thahara Ananda Sadiva 2008001010041</h4>
        </div>
    </div>
    </section>
    <footer>
        <small> copyright &copy; 2023 - Quizsan, All Rights Reserved.</small>
    </footer>
    
@endsection
