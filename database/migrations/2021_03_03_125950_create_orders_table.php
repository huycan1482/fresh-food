<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('code', 255);
            $table->string('fullname', 255);
            $table->string('mail', 255);
            $table->string('address1', 255);
            $table->string('address2', 255);
            $table->string('phone', 255);
            $table->integer('discount')->nullable();
            $table->text('note');
            $table->string('coupon', 255)->nullable();
            $table->integer('total_price');
            $table->integer('status_id');
            $table->integer('payment_id');
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
        Schema::dropIfExists('orders');
    }
}
