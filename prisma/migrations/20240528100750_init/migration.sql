/*
  Warnings:

  - You are about to drop the column `config` on the `Adapter` table. All the data in the column will be lost.
  - Added the required column `configId` to the `Adapter` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Adapter" DROP COLUMN "config",
ADD COLUMN     "configId" INTEGER NOT NULL,
ADD COLUMN     "email" TEXT,
ADD COLUMN     "mobile" TEXT;

-- CreateTable
CREATE TABLE "AdapterConfig" (
    "id" SERIAL NOT NULL,
    "publicKey" TEXT,
    "domain" TEXT,
    "type" TEXT,

    CONSTRAINT "AdapterConfig_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Adapter" ADD CONSTRAINT "Adapter_configId_fkey" FOREIGN KEY ("configId") REFERENCES "AdapterConfig"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
