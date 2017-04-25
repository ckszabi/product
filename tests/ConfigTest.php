<?php


use PHPUnit\Framework\TestCase;


final class ConfigTest extends TestCase
{
    public function testCanAccessConfigValues()
    {
		require  __DIR__ . '/../config/config.php';

		$this->assertNotEmpty($config);

    }
}