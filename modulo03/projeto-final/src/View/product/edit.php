<h1>Editar produto</h1>

<?php

    extract($data);

?>


<form action="" method="post">
    <label for="category">Categoria</label>
    <select name="category" id="category" class="form-select mb-3">
        <option selected>--selecione--</option>

        <?php
            while ($category = $data ->fetch(\PDO::FETCH_ASSOC)) {
                extract($category);

                echo "<option value='{$id}'>{$name}</option>";
            }
        ?>

    </select>


    <label for="name">Nome</label>
    <input value="<?php echo $product['name']; ?>" id="name" name="name" type="text" class="form-control mb-3">

    <label for="description">Descrição</label>
    <textarea id="description" name="description" class="form-control mb-3"><?php echo $product['description']; ?></textarea>

    <label for="value">Preço</label>
    <input value="<?php echo $product['value']; ?>" id="value" name="value" type="text" class="form-control mb-3">

    <label for="quantity">Quantidade</label>
    <input value="<?php echo $product['quantity']; ?>" id="quantity" name="quantity" type="text" class="form-control mb-3">

    <label for="photo">Foto</label>
    <input value="<?php echo $product['photo']; ?>" id="photo" name="photo" type="text" class="form-control mb-3">

    <button class="btn btn-primary">Atualizar</button>
</form>