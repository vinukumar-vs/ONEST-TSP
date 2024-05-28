/*
  Warnings:

  - Added the required column `type` to the `AdapterConfig` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "ServerType" AS ENUM ('BAP', 'BBP', 'BOTH');

-- AlterTable
ALTER TABLE "AdapterConfig" DROP COLUMN "type",
ADD COLUMN     "type" "ServerType" NOT NULL;
