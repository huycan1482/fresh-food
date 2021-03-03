<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name', 255);
            $table->string('slug', 255);
            $table->string('image', 255);
            $table->integer('number');
            $table->integer('price');
            $table->string('sku', 255)->nullable();
            $table->integer('sale')->nullable();
            $table->integer('position');
            $table->binary('is_active')->default(1);
            $table->binary('is_hot')->default(1);
            $table->bigInteger('category_id');
            $table->bigInteger('vendor_id');
            $table->text('summary');
            $table->text('description');
            $table->date('NSX');
            $table->date('HSD');
            $table->date('season_start');
            $table->date('season_end');
            $table->string('unit');
            $table->bigInteger('user_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
