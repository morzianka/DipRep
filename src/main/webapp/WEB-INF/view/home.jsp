﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="utf-8">
    <title>BroBro</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link type="text/css" href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
</head>
<body>

<div class="menu">
    <nav class="nav nav-pills nav-justified">
        <a class="nav-item nav-link active" href="/">Home</a>
        <a class="nav-item nav-link" href="/friends">Friends</a>
        <a class="nav-item nav-link" href="/about">About</a>
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
            <input class="logout" type="submit" value=""/>
        </form:form>
    </nav>
</div>

<div class="col-sm-6">Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data </div>

<div>
    <!-- Trigger the modal with a button -->
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Edit</button>

    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body">

                    <form:form action="saveUser" modelAttribute="user" method="POST">
                        <form:hidden path="id"/>
                        <table>
                            <tbody>
                            <tr>
                                <td><label>Name: </label></td>
                                <td><form:input path="name"/></td>
                            </tr>
                            <tr>
                                <td><label>Age: </label></td>
                                <td><form:input path="age"/></td>
                            </tr>
                            <tr>
                                <td><label for="native">Your native language:</label></td>
                                <td><form:select path="nativeLanguage" name="native" id="native" size="1"><option value="null" selected="">- All -</option><option value="77">Afrikaans</option><option value="106">Akan</option><option value="60">Albanian</option><option value="94">Amharic (Ethiopian)</option><option value="18">Arabic, Egyptian</option><option value="3">Arabic, Middle Eastern</option><option value="2">Arabic, Moroccan</option><option value="4">Arabic, other</option><option value="168">Arabic, Palestinian</option><option value="82">Aramaic</option><option value="64">Armenian</option><option value="112">Assamese</option><option value="78">Assyrian</option><option value="72">Azerbaijani</option><option value="165">Bambara (Bamana)</option><option value="145">Baoulé (Baule, Bawule)</option><option value="7">Basque</option><option value="144">Bavarian (Austro-Bavarian)</option><option value="100">Belarusian</option><option value="153">Bemba (Chiwemba, Wemba)</option><option value="8">Bengali</option><option value="9">Berber (Tamazight)</option><option value="59">Bosnian</option><option value="116">Breton</option><option value="10">Bulgarian</option><option value="96">Burmese</option><option value="65">Cambodian (Khmer)</option><option value="55">Catalan</option><option value="136">Cebuano (Bisaya)</option><option value="95">Chichewa (Nyanja)</option><option value="11">Chinese, Cantonese</option><option value="12">Chinese, Mandarin</option><option value="13">Chinese, other</option><option value="167">Chinese, Taiwanese (Hokkien, Minnanhua)</option><option value="147">Chuvash (Bulgar)</option><option value="14">Creole</option><option value="83">Croatian</option><option value="15">Czech</option><option value="16">Danish</option><option value="17">Dutch</option><option value="1">English</option><option value="19">Esperanto</option><option value="63">Estonian</option><option value="146">Faroese</option><option value="88">Fijian</option><option value="20">Filipino (Tagalog)</option><option value="21">Finnish</option><option value="155">Fon (Dahomeen, Djedji, Fongbe)</option><option value="22">French</option><option value="68">Gaelic (Irish)</option><option value="69">Gaelic (Scottish)</option><option value="79">Galician</option><option value="71">Georgian</option><option value="23">German</option><option value="24">Greek</option><option value="74">Gujarati</option><option value="138">Hausa</option><option value="73">Hawaiian</option><option value="25">Hebrew</option><option value="26">Hindi</option><option value="117">Hmong</option><option value="27">Hungarian</option><option value="56">Icelandic</option><option value="109">Ido</option><option value="157">Igbo (Ibo)</option><option value="5">Indonesian (Bahasa)</option><option value="108">Interlingua</option><option value="29">Italian</option><option value="30">Japanese</option><option value="159">Kachchi</option><option value="67">Kannada</option><option value="91">Kazakh</option><option value="141">Kituba (Kikoongo, Munukutuba)</option><option value="123">Konkani</option><option value="143">Konkani (Kunabi, Cugani, Bankoti)</option><option value="31">Korean</option><option value="53">Kurdish</option><option value="135">Kyrgyz (Kara-Kirgiz, Kirghiz, Kirgiz)</option><option value="133">Ladino</option><option value="84">Lao</option><option value="57">Latin</option><option value="62">Latvian</option><option value="114">Ligurian</option><option value="142">Lingala (Ngala)</option><option value="61">Lithuanian</option><option value="66">Lombard</option><option value="148">Luxembourgeois (Luxemburgian)</option><option value="87">Macedonian</option><option value="115">Malagasy</option><option value="6">Malay (Bahasa Malaysia)</option><option value="93">Malayalam</option><option value="119">Maldivian (Dhivehi)</option><option value="101">Maltese</option><option value="160">Mandinka</option><option value="122">Maori (New Zealand Maori)</option><option value="85">Marathi</option><option value="105">Mongolian</option><option value="158">Montenegrin</option><option value="104">Native American (Ojibway, Cree...)</option><option value="81">Nepali</option><option value="102">Newari</option><option value="32">Norwegian</option><option value="151">Nyanja (Chewa, Chinyanja)</option><option value="154">Occitan (Occitani)</option><option value="90">Oriya</option><option value="152">Oromo (Oromoo , Oromiffa)</option><option value="161">Papiamento (or Papiamentu)</option><option value="124">Paraguayan Guarani</option><option value="33">Persian (Farsi, Dari)</option><option value="34">Polish</option><option value="35">Portuguese</option><option value="128">Pulaar</option><option value="36">Punjabi</option><option value="166">Purépecha (Tarascan)</option><option value="58">Pushto (Pashto)</option><option value="80">Quechua</option><option value="169">Rapa Nui</option><option value="37">Romanian</option><option value="89">Romansch</option><option value="150">Romany (Gypsy, Danubian)</option><option value="140">Rundi (Kirundi, Urundi)</option><option value="38">Russian</option><option value="139">Rwanda (Kinyarwanda)</option><option value="121">Saami (sami)</option><option value="132">Samoan</option><option value="111">Sanskrit</option><option value="39">Serbian</option><option value="98">Shona</option><option value="131">Sicilian</option><option value="40">Sign Language</option><option value="76">Sindhi</option><option value="86">Sinhalese</option><option value="41">Slovak</option><option value="54">Slovenian</option><option value="99">Somali</option><option value="42">Spanish</option><option value="43">Swahili</option><option value="44">Swedish</option><option value="163">Swiss German</option><option value="149">Tajiki (Tajiki, Tadzhik)</option><option value="45">Tamil</option><option value="126">Tatar (Tartar)</option><option value="75">Telugu</option><option value="103">Tetum</option><option value="46">Thai</option><option value="47">Tibetan</option><option value="137">Tigrigna (Tigray, Tigrinya)</option><option value="162">Tok Pisin</option><option value="107">Tongan</option><option value="92">Tswana</option><option value="134">Tumbuka</option><option value="48">Turkish</option><option value="49">Ukrainian</option><option value="50">Urdu</option><option value="127">Uyghur (Wighor)</option><option value="97">Uzbek</option><option value="113">Venetian</option><option value="51">Vietnamese</option><option value="70">Welsh</option><option value="129">Wolof</option><option value="118">Xhosa</option><option value="52">Yiddish</option><option value="130">Yoruba</option><option value="125">Zulu</option></form:select></td>
                            </tr>
                            <tr>
                                <td><label for="native">Language you want to learn:</label></td>
                                <td><form:select path="languageToLearn" name="native" id="native2" size="1"><option value="null" selected="">- All -</option><option value="77">Afrikaans</option><option value="106">Akan</option><option value="60">Albanian</option><option value="94">Amharic (Ethiopian)</option><option value="18">Arabic, Egyptian</option><option value="3">Arabic, Middle Eastern</option><option value="2">Arabic, Moroccan</option><option value="4">Arabic, other</option><option value="168">Arabic, Palestinian</option><option value="82">Aramaic</option><option value="64">Armenian</option><option value="112">Assamese</option><option value="78">Assyrian</option><option value="72">Azerbaijani</option><option value="165">Bambara (Bamana)</option><option value="145">Baoulé (Baule, Bawule)</option><option value="7">Basque</option><option value="144">Bavarian (Austro-Bavarian)</option><option value="100">Belarusian</option><option value="153">Bemba (Chiwemba, Wemba)</option><option value="8">Bengali</option><option value="9">Berber (Tamazight)</option><option value="59">Bosnian</option><option value="116">Breton</option><option value="10">Bulgarian</option><option value="96">Burmese</option><option value="65">Cambodian (Khmer)</option><option value="55">Catalan</option><option value="136">Cebuano (Bisaya)</option><option value="95">Chichewa (Nyanja)</option><option value="11">Chinese, Cantonese</option><option value="12">Chinese, Mandarin</option><option value="13">Chinese, other</option><option value="167">Chinese, Taiwanese (Hokkien, Minnanhua)</option><option value="147">Chuvash (Bulgar)</option><option value="14">Creole</option><option value="83">Croatian</option><option value="15">Czech</option><option value="16">Danish</option><option value="17">Dutch</option><option value="1">English</option><option value="19">Esperanto</option><option value="63">Estonian</option><option value="146">Faroese</option><option value="88">Fijian</option><option value="20">Filipino (Tagalog)</option><option value="21">Finnish</option><option value="155">Fon (Dahomeen, Djedji, Fongbe)</option><option value="22">French</option><option value="68">Gaelic (Irish)</option><option value="69">Gaelic (Scottish)</option><option value="79">Galician</option><option value="71">Georgian</option><option value="23">German</option><option value="24">Greek</option><option value="74">Gujarati</option><option value="138">Hausa</option><option value="73">Hawaiian</option><option value="25">Hebrew</option><option value="26">Hindi</option><option value="117">Hmong</option><option value="27">Hungarian</option><option value="56">Icelandic</option><option value="109">Ido</option><option value="157">Igbo (Ibo)</option><option value="5">Indonesian (Bahasa)</option><option value="108">Interlingua</option><option value="29">Italian</option><option value="30">Japanese</option><option value="159">Kachchi</option><option value="67">Kannada</option><option value="91">Kazakh</option><option value="141">Kituba (Kikoongo, Munukutuba)</option><option value="123">Konkani</option><option value="143">Konkani (Kunabi, Cugani, Bankoti)</option><option value="31">Korean</option><option value="53">Kurdish</option><option value="135">Kyrgyz (Kara-Kirgiz, Kirghiz, Kirgiz)</option><option value="133">Ladino</option><option value="84">Lao</option><option value="57">Latin</option><option value="62">Latvian</option><option value="114">Ligurian</option><option value="142">Lingala (Ngala)</option><option value="61">Lithuanian</option><option value="66">Lombard</option><option value="148">Luxembourgeois (Luxemburgian)</option><option value="87">Macedonian</option><option value="115">Malagasy</option><option value="6">Malay (Bahasa Malaysia)</option><option value="93">Malayalam</option><option value="119">Maldivian (Dhivehi)</option><option value="101">Maltese</option><option value="160">Mandinka</option><option value="122">Maori (New Zealand Maori)</option><option value="85">Marathi</option><option value="105">Mongolian</option><option value="158">Montenegrin</option><option value="104">Native American (Ojibway, Cree...)</option><option value="81">Nepali</option><option value="102">Newari</option><option value="32">Norwegian</option><option value="151">Nyanja (Chewa, Chinyanja)</option><option value="154">Occitan (Occitani)</option><option value="90">Oriya</option><option value="152">Oromo (Oromoo , Oromiffa)</option><option value="161">Papiamento (or Papiamentu)</option><option value="124">Paraguayan Guarani</option><option value="33">Persian (Farsi, Dari)</option><option value="34">Polish</option><option value="35">Portuguese</option><option value="128">Pulaar</option><option value="36">Punjabi</option><option value="166">Purépecha (Tarascan)</option><option value="58">Pushto (Pashto)</option><option value="80">Quechua</option><option value="169">Rapa Nui</option><option value="37">Romanian</option><option value="89">Romansch</option><option value="150">Romany (Gypsy, Danubian)</option><option value="140">Rundi (Kirundi, Urundi)</option><option value="38">Russian</option><option value="139">Rwanda (Kinyarwanda)</option><option value="121">Saami (sami)</option><option value="132">Samoan</option><option value="111">Sanskrit</option><option value="39">Serbian</option><option value="98">Shona</option><option value="131">Sicilian</option><option value="40">Sign Language</option><option value="76">Sindhi</option><option value="86">Sinhalese</option><option value="41">Slovak</option><option value="54">Slovenian</option><option value="99">Somali</option><option value="42">Spanish</option><option value="43">Swahili</option><option value="44">Swedish</option><option value="163">Swiss German</option><option value="149">Tajiki (Tajiki, Tadzhik)</option><option value="45">Tamil</option><option value="126">Tatar (Tartar)</option><option value="75">Telugu</option><option value="103">Tetum</option><option value="46">Thai</option><option value="47">Tibetan</option><option value="137">Tigrigna (Tigray, Tigrinya)</option><option value="162">Tok Pisin</option><option value="107">Tongan</option><option value="92">Tswana</option><option value="134">Tumbuka</option><option value="48">Turkish</option><option value="49">Ukrainian</option><option value="50">Urdu</option><option value="127">Uyghur (Wighor)</option><option value="97">Uzbek</option><option value="113">Venetian</option><option value="51">Vietnamese</option><option value="70">Welsh</option><option value="129">Wolof</option><option value="118">Xhosa</option><option value="52">Yiddish</option><option value="130">Yoruba</option><option value="125">Zulu</option></form:select></td>
                            </tr>
                            </tbody>
                        </table>
                        <tr>
                            <td><label></label></td>
                            <td><input class="save" type="submit" value="Save"/></td>
                        </tr>
                    </form:form>

                    <%--<dt><label for="native">Your native language</label></dt>
                    <select name="native" id="native" size="1"><option value="null" selected="">- All -</option><option value="77">Afrikaans</option><option value="106">Akan</option><option value="60">Albanian</option><option value="94">Amharic (Ethiopian)</option><option value="18">Arabic, Egyptian</option><option value="3">Arabic, Middle Eastern</option><option value="2">Arabic, Moroccan</option><option value="4">Arabic, other</option><option value="168">Arabic, Palestinian</option><option value="82">Aramaic</option><option value="64">Armenian</option><option value="112">Assamese</option><option value="78">Assyrian</option><option value="72">Azerbaijani</option><option value="165">Bambara (Bamana)</option><option value="145">Baoulé (Baule, Bawule)</option><option value="7">Basque</option><option value="144">Bavarian (Austro-Bavarian)</option><option value="100">Belarusian</option><option value="153">Bemba (Chiwemba, Wemba)</option><option value="8">Bengali</option><option value="9">Berber (Tamazight)</option><option value="59">Bosnian</option><option value="116">Breton</option><option value="10">Bulgarian</option><option value="96">Burmese</option><option value="65">Cambodian (Khmer)</option><option value="55">Catalan</option><option value="136">Cebuano (Bisaya)</option><option value="95">Chichewa (Nyanja)</option><option value="11">Chinese, Cantonese</option><option value="12">Chinese, Mandarin</option><option value="13">Chinese, other</option><option value="167">Chinese, Taiwanese (Hokkien, Minnanhua)</option><option value="147">Chuvash (Bulgar)</option><option value="14">Creole</option><option value="83">Croatian</option><option value="15">Czech</option><option value="16">Danish</option><option value="17">Dutch</option><option value="1">English</option><option value="19">Esperanto</option><option value="63">Estonian</option><option value="146">Faroese</option><option value="88">Fijian</option><option value="20">Filipino (Tagalog)</option><option value="21">Finnish</option><option value="155">Fon (Dahomeen, Djedji, Fongbe)</option><option value="22">French</option><option value="68">Gaelic (Irish)</option><option value="69">Gaelic (Scottish)</option><option value="79">Galician</option><option value="71">Georgian</option><option value="23">German</option><option value="24">Greek</option><option value="74">Gujarati</option><option value="138">Hausa</option><option value="73">Hawaiian</option><option value="25">Hebrew</option><option value="26">Hindi</option><option value="117">Hmong</option><option value="27">Hungarian</option><option value="56">Icelandic</option><option value="109">Ido</option><option value="157">Igbo (Ibo)</option><option value="5">Indonesian (Bahasa)</option><option value="108">Interlingua</option><option value="29">Italian</option><option value="30">Japanese</option><option value="159">Kachchi</option><option value="67">Kannada</option><option value="91">Kazakh</option><option value="141">Kituba (Kikoongo, Munukutuba)</option><option value="123">Konkani</option><option value="143">Konkani (Kunabi, Cugani, Bankoti)</option><option value="31">Korean</option><option value="53">Kurdish</option><option value="135">Kyrgyz (Kara-Kirgiz, Kirghiz, Kirgiz)</option><option value="133">Ladino</option><option value="84">Lao</option><option value="57">Latin</option><option value="62">Latvian</option><option value="114">Ligurian</option><option value="142">Lingala (Ngala)</option><option value="61">Lithuanian</option><option value="66">Lombard</option><option value="148">Luxembourgeois (Luxemburgian)</option><option value="87">Macedonian</option><option value="115">Malagasy</option><option value="6">Malay (Bahasa Malaysia)</option><option value="93">Malayalam</option><option value="119">Maldivian (Dhivehi)</option><option value="101">Maltese</option><option value="160">Mandinka</option><option value="122">Maori (New Zealand Maori)</option><option value="85">Marathi</option><option value="105">Mongolian</option><option value="158">Montenegrin</option><option value="104">Native American (Ojibway, Cree...)</option><option value="81">Nepali</option><option value="102">Newari</option><option value="32">Norwegian</option><option value="151">Nyanja (Chewa, Chinyanja)</option><option value="154">Occitan (Occitani)</option><option value="90">Oriya</option><option value="152">Oromo (Oromoo , Oromiffa)</option><option value="161">Papiamento (or Papiamentu)</option><option value="124">Paraguayan Guarani</option><option value="33">Persian (Farsi, Dari)</option><option value="34">Polish</option><option value="35">Portuguese</option><option value="128">Pulaar</option><option value="36">Punjabi</option><option value="166">Purépecha (Tarascan)</option><option value="58">Pushto (Pashto)</option><option value="80">Quechua</option><option value="169">Rapa Nui</option><option value="37">Romanian</option><option value="89">Romansch</option><option value="150">Romany (Gypsy, Danubian)</option><option value="140">Rundi (Kirundi, Urundi)</option><option value="38">Russian</option><option value="139">Rwanda (Kinyarwanda)</option><option value="121">Saami (sami)</option><option value="132">Samoan</option><option value="111">Sanskrit</option><option value="39">Serbian</option><option value="98">Shona</option><option value="131">Sicilian</option><option value="40">Sign Language</option><option value="76">Sindhi</option><option value="86">Sinhalese</option><option value="41">Slovak</option><option value="54">Slovenian</option><option value="99">Somali</option><option value="42">Spanish</option><option value="43">Swahili</option><option value="44">Swedish</option><option value="163">Swiss German</option><option value="149">Tajiki (Tajiki, Tadzhik)</option><option value="45">Tamil</option><option value="126">Tatar (Tartar)</option><option value="75">Telugu</option><option value="103">Tetum</option><option value="46">Thai</option><option value="47">Tibetan</option><option value="137">Tigrigna (Tigray, Tigrinya)</option><option value="162">Tok Pisin</option><option value="107">Tongan</option><option value="92">Tswana</option><option value="134">Tumbuka</option><option value="48">Turkish</option><option value="49">Ukrainian</option><option value="50">Urdu</option><option value="127">Uyghur (Wighor)</option><option value="97">Uzbek</option><option value="113">Venetian</option><option value="51">Vietnamese</option><option value="70">Welsh</option><option value="129">Wolof</option><option value="118">Xhosa</option><option value="52">Yiddish</option><option value="130">Yoruba</option><option value="125">Zulu</option></select>

                    <br>

                    <dt><label for="native">Language you want to learn</label></dt>
                    <select name="native" id="native2" size="1"><option value="null" selected="">- All -</option><option value="77">Afrikaans</option><option value="106">Akan</option><option value="60">Albanian</option><option value="94">Amharic (Ethiopian)</option><option value="18">Arabic, Egyptian</option><option value="3">Arabic, Middle Eastern</option><option value="2">Arabic, Moroccan</option><option value="4">Arabic, other</option><option value="168">Arabic, Palestinian</option><option value="82">Aramaic</option><option value="64">Armenian</option><option value="112">Assamese</option><option value="78">Assyrian</option><option value="72">Azerbaijani</option><option value="165">Bambara (Bamana)</option><option value="145">Baoulé (Baule, Bawule)</option><option value="7">Basque</option><option value="144">Bavarian (Austro-Bavarian)</option><option value="100">Belarusian</option><option value="153">Bemba (Chiwemba, Wemba)</option><option value="8">Bengali</option><option value="9">Berber (Tamazight)</option><option value="59">Bosnian</option><option value="116">Breton</option><option value="10">Bulgarian</option><option value="96">Burmese</option><option value="65">Cambodian (Khmer)</option><option value="55">Catalan</option><option value="136">Cebuano (Bisaya)</option><option value="95">Chichewa (Nyanja)</option><option value="11">Chinese, Cantonese</option><option value="12">Chinese, Mandarin</option><option value="13">Chinese, other</option><option value="167">Chinese, Taiwanese (Hokkien, Minnanhua)</option><option value="147">Chuvash (Bulgar)</option><option value="14">Creole</option><option value="83">Croatian</option><option value="15">Czech</option><option value="16">Danish</option><option value="17">Dutch</option><option value="1">English</option><option value="19">Esperanto</option><option value="63">Estonian</option><option value="146">Faroese</option><option value="88">Fijian</option><option value="20">Filipino (Tagalog)</option><option value="21">Finnish</option><option value="155">Fon (Dahomeen, Djedji, Fongbe)</option><option value="22">French</option><option value="68">Gaelic (Irish)</option><option value="69">Gaelic (Scottish)</option><option value="79">Galician</option><option value="71">Georgian</option><option value="23">German</option><option value="24">Greek</option><option value="74">Gujarati</option><option value="138">Hausa</option><option value="73">Hawaiian</option><option value="25">Hebrew</option><option value="26">Hindi</option><option value="117">Hmong</option><option value="27">Hungarian</option><option value="56">Icelandic</option><option value="109">Ido</option><option value="157">Igbo (Ibo)</option><option value="5">Indonesian (Bahasa)</option><option value="108">Interlingua</option><option value="29">Italian</option><option value="30">Japanese</option><option value="159">Kachchi</option><option value="67">Kannada</option><option value="91">Kazakh</option><option value="141">Kituba (Kikoongo, Munukutuba)</option><option value="123">Konkani</option><option value="143">Konkani (Kunabi, Cugani, Bankoti)</option><option value="31">Korean</option><option value="53">Kurdish</option><option value="135">Kyrgyz (Kara-Kirgiz, Kirghiz, Kirgiz)</option><option value="133">Ladino</option><option value="84">Lao</option><option value="57">Latin</option><option value="62">Latvian</option><option value="114">Ligurian</option><option value="142">Lingala (Ngala)</option><option value="61">Lithuanian</option><option value="66">Lombard</option><option value="148">Luxembourgeois (Luxemburgian)</option><option value="87">Macedonian</option><option value="115">Malagasy</option><option value="6">Malay (Bahasa Malaysia)</option><option value="93">Malayalam</option><option value="119">Maldivian (Dhivehi)</option><option value="101">Maltese</option><option value="160">Mandinka</option><option value="122">Maori (New Zealand Maori)</option><option value="85">Marathi</option><option value="105">Mongolian</option><option value="158">Montenegrin</option><option value="104">Native American (Ojibway, Cree...)</option><option value="81">Nepali</option><option value="102">Newari</option><option value="32">Norwegian</option><option value="151">Nyanja (Chewa, Chinyanja)</option><option value="154">Occitan (Occitani)</option><option value="90">Oriya</option><option value="152">Oromo (Oromoo , Oromiffa)</option><option value="161">Papiamento (or Papiamentu)</option><option value="124">Paraguayan Guarani</option><option value="33">Persian (Farsi, Dari)</option><option value="34">Polish</option><option value="35">Portuguese</option><option value="128">Pulaar</option><option value="36">Punjabi</option><option value="166">Purépecha (Tarascan)</option><option value="58">Pushto (Pashto)</option><option value="80">Quechua</option><option value="169">Rapa Nui</option><option value="37">Romanian</option><option value="89">Romansch</option><option value="150">Romany (Gypsy, Danubian)</option><option value="140">Rundi (Kirundi, Urundi)</option><option value="38">Russian</option><option value="139">Rwanda (Kinyarwanda)</option><option value="121">Saami (sami)</option><option value="132">Samoan</option><option value="111">Sanskrit</option><option value="39">Serbian</option><option value="98">Shona</option><option value="131">Sicilian</option><option value="40">Sign Language</option><option value="76">Sindhi</option><option value="86">Sinhalese</option><option value="41">Slovak</option><option value="54">Slovenian</option><option value="99">Somali</option><option value="42">Spanish</option><option value="43">Swahili</option><option value="44">Swedish</option><option value="163">Swiss German</option><option value="149">Tajiki (Tajiki, Tadzhik)</option><option value="45">Tamil</option><option value="126">Tatar (Tartar)</option><option value="75">Telugu</option><option value="103">Tetum</option><option value="46">Thai</option><option value="47">Tibetan</option><option value="137">Tigrigna (Tigray, Tigrinya)</option><option value="162">Tok Pisin</option><option value="107">Tongan</option><option value="92">Tswana</option><option value="134">Tumbuka</option><option value="48">Turkish</option><option value="49">Ukrainian</option><option value="50">Urdu</option><option value="127">Uyghur (Wighor)</option><option value="97">Uzbek</option><option value="113">Venetian</option><option value="51">Vietnamese</option><option value="70">Welsh</option><option value="129">Wolof</option><option value="118">Xhosa</option><option value="52">Yiddish</option><option value="130">Yoruba</option><option value="125">Zulu</option></select>
--%>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Подключаем jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Подключаем плагин Popper -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>

<!-- Подключаем Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>