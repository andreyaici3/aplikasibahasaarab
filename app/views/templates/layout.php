<!DOCTYPE html>
<html lang="en">

<head>
    <?= @$header ?>
</head>

<body class="g-sidenav-show bg-gray-100">
    <div class="min-height-300 bg-primary position-absolute w-100"></div>
    <?= @$sidebar ?>
    <main class="main-content position-relative border-radius-lg ">
        <div class="container-fluid py-4">
            <?= @$content ?>
        </div>
    </main>

    <?= @$footer ?>
</body>

</html>