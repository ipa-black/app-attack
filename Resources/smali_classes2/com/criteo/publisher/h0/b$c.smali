.class Lcom/criteo/publisher/h0/b$c;
.super Lcom/criteo/publisher/h0/b$d;
.source "DfpHeaderBidding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/h0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final c:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;)V
    .locals 2

    .line 310
    const-string v0, "AdMob20"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/criteo/publisher/h0/b$d;-><init>(Ljava/lang/String;Lcom/criteo/publisher/h0/b$a;)V

    .line 311
    iput-object p1, p0, Lcom/criteo/publisher/h0/b$c;->c:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;Lcom/criteo/publisher/h0/b$a;)V
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Lcom/criteo/publisher/h0/b$c;-><init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;)V

    return-void
.end method

.method static a(Ljava/lang/Object;)Z
    .locals 0

    .line 316
    :try_start_0
    instance-of p0, p0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/criteo/publisher/h0/b$c;->c:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    invoke-super {p0, p1, p2}, Lcom/criteo/publisher/h0/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 327
    invoke-static {p1}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    return-void
.end method
