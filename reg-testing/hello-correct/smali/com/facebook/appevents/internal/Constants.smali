.class public Lcom/facebook/appevents/internal/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final AA_TIME_SPENT_EVENT_NAME:Ljava/lang/String; = "fb_aa_time_spent_on_view"

.field public static final AA_TIME_SPENT_SCREEN_PARAMETER_NAME:Ljava/lang/String; = "fb_aa_time_spent_view_name"

.field public static final EVENT_NAME_EVENT_KEY:Ljava/lang/String; = "_eventName"

.field public static final EVENT_NAME_MD5_EVENT_KEY:Ljava/lang/String; = "_eventName_md5"

.field public static final EVENT_PARAM_PRODUCT_AVAILABILITY:Ljava/lang/String; = "fb_product_availability"

.field public static final EVENT_PARAM_PRODUCT_BRAND:Ljava/lang/String; = "fb_product_brand"

.field public static final EVENT_PARAM_PRODUCT_CONDITION:Ljava/lang/String; = "fb_product_condition"

.field public static final EVENT_PARAM_PRODUCT_DESCRIPTION:Ljava/lang/String; = "fb_product_description"

.field public static final EVENT_PARAM_PRODUCT_GTIN:Ljava/lang/String; = "fb_product_gtin"

.field public static final EVENT_PARAM_PRODUCT_IMAGE_LINK:Ljava/lang/String; = "fb_product_image_link"

.field public static final EVENT_PARAM_PRODUCT_ITEM_ID:Ljava/lang/String; = "fb_product_item_id"

.field public static final EVENT_PARAM_PRODUCT_LINK:Ljava/lang/String; = "fb_product_link"

.field public static final EVENT_PARAM_PRODUCT_MPN:Ljava/lang/String; = "fb_product_mpn"

.field public static final EVENT_PARAM_PRODUCT_PRICE_AMOUNT:Ljava/lang/String; = "fb_product_price_amount"

.field public static final EVENT_PARAM_PRODUCT_PRICE_CURRENCY:Ljava/lang/String; = "fb_product_price_currency"

.field public static final EVENT_PARAM_PRODUCT_TITLE:Ljava/lang/String; = "fb_product_title"

.field public static final IAP_FREE_TRIAL_PERIOD:Ljava/lang/String; = "fb_free_trial_period"

.field public static final IAP_INTRO_PRICE_AMOUNT_MICROS:Ljava/lang/String; = "fb_intro_price_amount_micros"

.field public static final IAP_INTRO_PRICE_CYCLES:Ljava/lang/String; = "fb_intro_price_cycles"

.field public static final IAP_PACKAGE_NAME:Ljava/lang/String; = "fb_iap_package_name"

.field public static final IAP_PRODUCT_DESCRIPTION:Ljava/lang/String; = "fb_iap_product_description"

.field public static final IAP_PRODUCT_ID:Ljava/lang/String; = "fb_iap_product_id"

.field public static final IAP_PRODUCT_TITLE:Ljava/lang/String; = "fb_iap_product_title"

.field public static final IAP_PRODUCT_TYPE:Ljava/lang/String; = "fb_iap_product_type"

.field public static final IAP_PURCHASE_TIME:Ljava/lang/String; = "fb_iap_purchase_time"

.field public static final IAP_PURCHASE_TOKEN:Ljava/lang/String; = "fb_iap_purchase_token"

.field public static final IAP_SUBSCRIPTION_AUTORENEWING:Ljava/lang/String; = "fb_iap_subs_auto_renewing"

.field public static final IAP_SUBSCRIPTION_PERIOD:Ljava/lang/String; = "fb_iap_subs_period"

.field public static final LOG_TIME_APP_EVENT_KEY:Ljava/lang/String; = "_logTime"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultAppEventsSessionTimeoutInSeconds()I
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/internal/Constants;"

    const-string v1, "getDefaultAppEventsSessionTimeoutInSeconds"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v5, 0x3c

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/internal/Constants;"

    const-string v1, "getDefaultAppEventsSessionTimeoutInSeconds"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method
