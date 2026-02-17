ALTER TABLE "public"."users" ALTER COLUMN "tier" DROP DEFAULT;--> statement-breakpoint
ALTER TABLE "public"."users" ALTER COLUMN "tier" SET DATA TYPE text;--> statement-breakpoint
DROP TYPE "public"."user_tier";--> statement-breakpoint
CREATE TYPE "public"."user_tier" AS ENUM('free', 'fluent');--> statement-breakpoint
ALTER TABLE "public"."users" ALTER COLUMN "tier" SET DATA TYPE "public"."user_tier" USING "tier"::"public"."user_tier";--> statement-breakpoint
ALTER TABLE "public"."users" ALTER COLUMN "tier" SET DEFAULT 'free';
