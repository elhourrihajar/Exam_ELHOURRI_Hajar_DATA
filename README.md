# Exam_ELHOURRI_Hajar_DATA


<br><br>
<h2>Question 1 :</h2>
<H3>Initialisation du working teraform</H3>
En executant la commande : <code>terraform init</code> <br><br>

![image](https://user-images.githubusercontent.com/61779117/205948391-e89152b3-167b-4a10-afd1-7bef104e0b41.png)


<br><br>

<H3>Planification terraform</H3>
En executant la commande : <code>terraform plan -out plan_el_hourri.txt</code> <br><br>

sachant que l'option <code>-out</code> permet de stocker le plan dans le fichier <code>plan_el_hourri.txt</code> 
<br><br>
![image](https://user-images.githubusercontent.com/61779117/205949573-e492b828-dff0-4837-8900-b92e32a359d8.png)

<br><br>

<H3>Exécution terraform</H3>
En executant la commande : <code>terraform apply</code> <br><br>

![image](https://user-images.githubusercontent.com/61779117/205950197-b157ac60-48c0-470a-9aa8-219f874eedca.png)

<br><br>

<H3>Résultat coté Interface AWS</H3>

![image](https://user-images.githubusercontent.com/61779117/205951858-4c0d0932-a6eb-4de7-ad02-8fd4633fa573.png)

<br><br>
<h2>Question 2 :</h2>
<H3>Se connecter à notre VM crée</H3>
Afin de se connecter à notre VM crée , il va falloir cliquer sur le boutton <b>connect</b> illustré dans l'image précédente :

<h4> Connexion SSH Client (terminal local)</h4>

![image](https://user-images.githubusercontent.com/61779117/205958324-88ec0fab-177a-4a2e-8310-9e04cbd47634.png)

<h4> Session client AWS</h4>

![image](https://user-images.githubusercontent.com/61779117/205953521-98d89405-2f2c-4991-a33e-1d33c2c0868b.png)

<h3>Installations </h3>

<code>sudo yum install -y python </code><br>
<br>

![image](https://user-images.githubusercontent.com/61779117/205954260-8e9da00b-3460-4cff-b179-7f8727ecff02.png)

<br>
<code>sudo yum install -y pip </code><br>

![image](https://user-images.githubusercontent.com/61779117/205954462-2de8fd2f-9fe3-4c16-b4dd-41e0aac55b23.png)

<br>
<code>sudo pip install boto3 </code><br>

![image](https://user-images.githubusercontent.com/61779117/205954628-f0ff7f70-4ffc-4603-96c6-ce1266ee75e2.png)


![image](https://user-images.githubusercontent.com/61779117/205954925-5074f840-1c8c-421f-a198-61d20b983445.png)

<h3>Copier le script</h3>

![image](https://user-images.githubusercontent.com/61779117/205957020-9d23d224-e8f1-4513-85c9-4259e1a5ecbc.png)

<h3>ajoutez une cotation (ticker) avec vos initiales (HAEL)</h3>

![image](https://user-images.githubusercontent.com/61779117/205957507-19ad1f9e-bbdc-4b76-9322-6b010e82f45d.png)

<h3>Exécution du code python : </h3>
<code>python stock_copie.py</code>

![image](https://user-images.githubusercontent.com/61779117/205958592-ec620d57-94ae-454a-b393-544631c286bd.png)

<h3>Utiliser la console AWS Kinesis pour créer un « data stream » dans la même région que la VM </h3>

![image](https://user-images.githubusercontent.com/61779117/205959290-a1c4660c-a085-4444-903d-deb60a747b0d.png)

![image](https://user-images.githubusercontent.com/61779117/205959334-d48d2160-6865-49c2-8619-acec73439f00.png)


<h3>Info de la « data stream » créee dans la même région que la VM </h3>

![image](https://user-images.githubusercontent.com/61779117/205959760-b97dc394-49ab-4ca3-8961-2380b3832d13.png)

<h2>Manipulation de « data streams » avec le CLI AWS</h2>

<h1>Suppression</h1>

<code>aws kinesis delete-stream --stream-name hajar-el-hourri-stock-input-stream</code>

![image](https://user-images.githubusercontent.com/61779117/205967366-fe71d34d-5c0a-4de2-a3e4-33a0e1ad77ee.png)


<br>


<h1>Creation</h1>


<code>aws kinesis create-stream --stream-name hajar-el-hourri-stock-input-stream --shard-count 1 </code>

![image](https://user-images.githubusercontent.com/61779117/205967243-f65ca84e-a650-4c6c-8dbf-2308be0023c6.png)

<br>
<b>Résultat :</b>

![image](https://user-images.githubusercontent.com/61779117/205967847-f6a7978c-93bf-4406-8cb8-01da96ef24e1.png)


<h1>Envoi des données de cotation vers le « data stream »</h1>


