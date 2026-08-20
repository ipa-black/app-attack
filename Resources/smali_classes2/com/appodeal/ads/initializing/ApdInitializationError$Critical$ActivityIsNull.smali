.class public final Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$ActivityIsNull;
.super Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityIsNull"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$ActivityIsNull;",
        "Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;",
        "()V",
        "apd_public"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$ActivityIsNull;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$ActivityIsNull;

    invoke-direct {v0}, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$ActivityIsNull;-><init>()V

    sput-object v0, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$ActivityIsNull;->INSTANCE:Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$ActivityIsNull;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "The Activity instance passed to Appodeal initialization method is null. Appodeal SDK is disabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
