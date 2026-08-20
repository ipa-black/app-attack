.class public abstract Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;
.super Lcom/appodeal/ads/initializing/ApdInitializationError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/initializing/ApdInitializationError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Critical"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$SdkVersionIsNotSupported;,
        Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$ActivityIsNull;,
        Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$AppKeyIsNullOrEmpty;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0003\u0007\u0008\tB\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0003\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;",
        "Lcom/appodeal/ads/initializing/ApdInitializationError;",
        "description",
        "",
        "(Ljava/lang/String;)V",
        "getDescription",
        "()Ljava/lang/String;",
        "ActivityIsNull",
        "AppKeyIsNullOrEmpty",
        "SdkVersionIsNotSupported",
        "Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$SdkVersionIsNotSupported;",
        "Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$ActivityIsNull;",
        "Lcom/appodeal/ads/initializing/ApdInitializationError$Critical$AppKeyIsNullOrEmpty;",
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


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/initializing/ApdInitializationError;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/initializing/ApdInitializationError$Critical;->description:Ljava/lang/String;

    return-object v0
.end method
