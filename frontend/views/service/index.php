<?php
$this->title = $service->name;
$this->params['breadcrumbs'][] = ['label' => $service->category->name, 'url' => ['/category/index', 'slug' => $service->category->slug]];
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="row">
    <div class="col s12 m12">
        <div class="card services-card large">
            <div class="card-image">
                <img src="/uploads/services/<?=$service->img?>">
                <span class="services-card-name card-title"><?=$service->name?></span>
                <span class="services-card-category card-title"><?=$service->category->name?></span>
                <!--<a class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i></a>-->
                <div class="datepicker small"></div>
            </div>
            <div class="card-content col s12">
                <div class="row">
                    <div class="col s12">
                        <ul class="tabs blue-light">
                            <li class="tab col s3"><a class="active" data-target="#media">Media</a></li>
                            <li class="tab col s3"><a data-target="#menyu">Menyu</a></li>
                            <li class="tab col s3"><a data-target="#map">Ünvan</a></li>
                            <li class="tab col s3 disabled"><a data-target="#review">Rəylər</a></li>
                        </ul>
                    </div>
                    <div class="tabs-content col s12 active" id="media">
                        <div class="row">
                            <div class="grid">
                            <?php foreach ($service->media as $media) { ?>
                                <div class="grid-item col s6 m4 l3">
                                    <div class="card center">
                                    <a href="/uploads/services/<?=$media->img?>" class="swipebox" title="<?=$service->name?>">
                                        <img src="/uploads/services/min/<?=$media->img?>" alt="image">
                                    </a>
                                    <ul class="media-social">
                                        <li class="facebook"><a href="#"><i class="zmdi zmdi-facebook-box"></i></a></li>
                                        <li class="google-plus"><a href="#"><i class="zmdi zmdi-google-plus-box"></i></a></li>
                                        <li class="twitter"><a href="#"><i class="zmdi zmdi-twitter-box"></i></a></li>
                                    </ul>
                                    </div>
                                </div>
                            <?php } ?>
                            </div>
                        </div>
                    </div>
                    <div class="tabs-content col s12" id="menyu">
                        <div class="row">
                            <div class="grid menyu">
                                <div class="grid-item col s12 m4">
                                  <div class="card small">
                                    <div class="card-image">
                                      <img src="/images/menyu/6.jpg">
                                      <span class="card-title">Soyuq qəlyanaltı</span>
                                    </div>
                                    <div class="card-content">
                                        <ul class="collection">
                                            <li class="collection-item">Qara kürü</li>
                                            <li class="collection-item">Qırmızı kürü</li>
                                            <li class="collection-item">Kərə yağı</li>
                                            <li class="collection-item">Təzə xiyar</li>
                                            <li class="collection-item">Təzə pomidor</li>
                                            <li class="collection-item">Göyərti müxtəlif</li>
                                            <li class="collection-item">Limon</li>
                                            <li class="collection-item">Saçaqlı pendir</li>
                                            <li class="collection-item">Holland pendiri</li>
                                            <li class="collection-item">Ağ pendir</li>
                                            <li class="collection-item">Motal pendiri</li>
                                            <li class="collection-item">Kolbasa Həkim</li>
                                            <li class="collection-item">Kolbasa Həvəskər</li>
                                            <li class="collection-item">Kolbasa Ovçu</li>
                                            <li class="collection-item">Kolbasa Hisə verilmiş</li>
                                            <li class="collection-item">Vetçina</li>
                                            <li class="collection-item">Xiyar turşusu</li>
                                            <li class="collection-item">Pomidor turşusu</li>
                                            <li class="collection-item">Alça turşusu</li>
                                            <li class="collection-item">Əzgil turşusu</li>
                                            <li class="collection-item">Toyuq qril</li>
                                            <li class="collection-item">Toyuq soyutması</li>
                                            <li class="collection-item">Zeytun qara</li>
                                            <li class="collection-item">Zeytun yaşıl</li>
                                            <li class="collection-item">Salat Paytaxt</li>
                                            <li class="collection-item">Salat İncə</li>
                                            <li class="collection-item">Salat Göbələk</li>
                                            <li class="collection-item">Salat Toyuq</li>
                                            <li class="collection-item">Salat Mimoza</li>
                                            <li class="collection-item">Blinçik ət ilə</li>
                                            <li class="collection-item">Blinçik kəsmik ilə</li>
                                            <li class="collection-item">Təndir çörəyi</li>
                                            <li class="collection-item">Qara çörək</li>
                                            <li class="collection-item">Lavaş</li>
                                        </ul>
                                    </div>
                                  </div>
                                </div>
                                
                                <div class="grid-item col s12 m4">
                                  <div class="card small">
                                    <div class="card-image">
                                      <img src="/images/menyu/4.jpg">
                                      <span class="card-title">Desert</span>
                                    </div>
                                    <div class="card-content">
                                        <ul class="collection">
                                            <li class="collection-item">Meyvə mövsümə uyğun</li>
                                            <li class="collection-item">Kofe istəklə</li>
                                            <li class="collection-item">Çay istəklə</li>
                                            <li class="collection-item">Ləbləbi</li>
                                            <li class="collection-item">Dondurma</li>
                                        </ul>
                                    </div>
                                  </div>
                                </div>
                                
                                <div class="grid-item col s12 m4">
                                  <div class="card small">
                                    <div class="card-image">
                                      <img src="/images/menyu/1.jpg">
                                      <span class="card-title">İsti yeməklər</span>
                                    </div>
                                    <div class="card-content">
                                        <ul class="collection">
                                            <li class="collection-item">Xaşlama</li>
                                            <li class="collection-item">Lülə kabab</li>
                                            <li class="collection-item">Tikə kabab</li>
                                            <li class="collection-item">Toyuq kabab</li>
                                            <li class="collection-item">Dana basdırma və ya bildirçin</li>
                                            <li class="collection-item">Balıq kababı</li>
                                            <li class="collection-item">Kartof lüləsi</li>
                                            <li class="collection-item">Tərəvəz kababı</li>
                                            <li class="collection-item">Qutab ət</li>
                                            <li class="collection-item">Qutab göy</li>
                                            <li class="collection-item">Sac içi içalat</li>
                                            <li class="collection-item">Şah plov</li>
                                        </ul>
                                    </div>
                                  </div>
                                </div>
                                
                                <div class="grid-item col s12 m4">
                                  <div class="card small">
                                    <div class="card-image">
                                      <img src="/images/menyu/3.jpg">
                                      <span class="card-title">Servis</span>
                                    </div>
                                    <div class="card-content">
                                        <ul class="collection">
                                            <li class="collection-item">Musiqi</li>
                                            <li class="collection-item">Tamada</li>
                                            <li class="collection-item">Video çəkiliş PTS</li>
                                            <li class="collection-item">Tort 5 mərtəbə</li>
                                            <li class="collection-item">Furşet stolu foyedə</li>
                                            <li class="collection-item">Dəvətnamə</li>
                                            <li class="collection-item">Rəq proqramı</li>
                                            <li class="collection-item">Avtomobil</li>
                                            <li class="collection-item">Atəşfəşanlıq</li>
                                            <li class="collection-item">Şar</li>
                                        </ul>
                                    </div>
                                  </div>
                                </div>
                                
                                <div class="grid-item col s12 m4">
                                  <div class="card small">
                                    <div class="card-image">
                                      <img src="/images/menyu/7.jpg">
                                      <span class="card-title">Spirtli içkilər</span>
                                    </div>
                                    <div class="card-content">
                                        <ul class="collection">
                                            <li class="collection-item">Araq 2 cür Rusiya, Belarusiya</li>
                                            <li class="collection-item">Şampan</li>
                                            <li class="collection-item">Çaxır</li>
                                        </ul>
                                    </div>
                                  </div>
                                </div>
                                
                                <div class="grid-item col s12 m4">
                                  <div class="card small">
                                    <div class="card-image">
                                      <img src="/images/menyu/2.jpg">
                                      <span class="card-title">Bar xidmətləri</span>
                                    </div>
                                    <div class="card-content">
                                        <ul class="collection">
                                            <li class="collection-item">Spirtli içkilər</li>
                                            <li class="collection-item">Mineral sular</li>
                                            <li class="collection-item">Təbii şirələr</li>
                                            <li class="collection-item">Limonlar</li>
                                            <li class="collection-item">Kofe</li>
                                            <li class="collection-item">Çay</li>
                                            <li class="collection-item">Kapuçino</li>
                                            <li class="collection-item">Şirniyyatlar müxtəlif</li>
                                        </ul>
                                    </div>
                                  </div>
                                </div>
                                
                                <div class="grid-item col s12 m4">
                                  <div class="card small">
                                    <div class="card-image">
                                      <img src="/images/menyu/5.jpg">
                                      <span class="card-title">Spirtsiz içkilər</span>
                                    </div>
                                    <div class="card-content">
                                        <ul class="collection">
                                            <li class="collection-item">Təbii şirə 4 növ</li>
                                            <li class="collection-item">Düşes Çernoqalovka</li>
                                            <li class="collection-item">Tərxun Çernoqalovka</li>
                                            <li class="collection-item">Mineral su qazlı + qazsız</li>
                                        </ul>
                                    </div>
                                  </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tabs-content col s12" id="map">
                        <p>Telefon: <?=$service->phone?></p>
                        <p>Mobil: <?=$service->mobil?></p>
                        <p>Ünvan: <?=$service->adress?></p>
                        <div id="google-map" data-title="<?=$service->name?>" data-longlat="<?=$service->longlat?>" style="margin-top: 20px;width: 100%; height: 430px;position: relative;"></div>
                    </div>
                    <div class="tabs-content col s12" id="review">
                        
                    </div>
                </div>
            </div>
            <!--<div class="card-submenu col s12 m3">-->
            <!--    <div class="datepicker"></div>-->
            <!--</div>-->
        </div>
    </div>
</div>