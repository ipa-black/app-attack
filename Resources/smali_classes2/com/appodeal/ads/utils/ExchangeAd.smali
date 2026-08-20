.class public Lcom/appodeal/ads/utils/ExchangeAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CLICK_REQUEST_ERROR:I = 0x3ea

.field public static final CREATIVE_HEIGHT:Ljava/lang/String; = "X-Appodeal-Creative-Height"

.field public static final CREATIVE_WIDTH:Ljava/lang/String; = "X-Appodeal-Creative-Width"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/appodeal/ads/utils/ExchangeAd;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILL_REQUEST_ERROR:I = 0x3ec

.field public static final FINISH_REQUEST_ERROR:I = 0x3eb

.field public static final IMPRESSION_REQUEST_ERROR:I = 0x3e9

.field public static final LOADING_TIMEOUT_ERROR:I = 0x3ed


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:I

.field public final d:J


# direct methods
.method public static synthetic $r8$lambda$5fh5SDA4RfgjJ3bDat1SNB22SCQ(Lcom/appodeal/ads/utils/ExchangeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/utils/ExchangeAd;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$VPe5lcrRpj8FzjKA0HsICJqgP6k(Lcom/appodeal/ads/utils/ExchangeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/utils/ExchangeAd;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$_5U3l5S5nxxuX5E8OXbJA23z-yk(Lcom/appodeal/ads/utils/ExchangeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/utils/ExchangeAd;->d()V

    return-void
.end method

.method public static synthetic $r8$lambda$amQgA0zS2GPPOdS1oibRy3D-5N8(Lcom/appodeal/ads/utils/ExchangeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/utils/ExchangeAd;->b()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/utils/ExchangeAd$a;

    invoke-direct {v0}, Lcom/appodeal/ads/utils/ExchangeAd$a;-><init>()V

    sput-object v0, Lcom/appodeal/ads/utils/ExchangeAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/appodeal/ads/utils/ExchangeAd;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/utils/ExchangeAd;->a:Ljava/lang/String;

    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/utils/ExchangeAd;->b:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/utils/ExchangeAd;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appodeal/ads/utils/ExchangeAd;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/appodeal/ads/utils/ExchangeAd;->c:I

    iput-object p1, p0, Lcom/appodeal/ads/utils/ExchangeAd;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/utils/ExchangeAd;->b:Ljava/util/Map;

    iput-wide p3, p0, Lcom/appodeal/ads/utils/ExchangeAd;->d:J

    return-void
.end method

.method private synthetic a()V
    .locals 1

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/utils/ExchangeAd;->trackError(I)V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/utils/ExchangeAd;->trackError(I)V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/utils/ExchangeAd;->trackError(I)V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/utils/ExchangeAd;->trackError(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/utils/ExchangeAd;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/utils/ExchangeAd;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/appodeal/ads/utils/ExchangeAd;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/utils/ExchangeAd;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/appodeal/ads/utils/ExchangeAd;->d:J

    iget v3, p0, Lcom/appodeal/ads/utils/ExchangeAd;->c:I

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%%SEGMENT%%"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%25%25SEGMENT%25%25"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%%PLACEMENT%%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%25%25PLACEMENT%25%25"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%%ERRORCODE%%"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%25%25ERRORCODE%25%25"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_1
    sget-object v1, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    invoke-static {v0, v1, p3}, Lcom/appodeal/ads/n5;->a(Ljava/lang/String;Lcom/appodeal/ads/utils/s;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/utils/ExchangeAd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseTime()I
    .locals 1

    const-string v0, "X-Appodeal-Close-Time"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/utils/ExchangeAd;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    const-string v0, "X-Appodeal-Creative-Height"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/utils/ExchangeAd;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    const-string v0, "X-Appodeal-Creative-Type"

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/utils/ExchangeAd;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/utils/ExchangeAd;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const-string v0, "X-Appodeal-Creative-Width"

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/utils/ExchangeAd;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public trackClick()V
    .locals 3

    new-instance v0, Lcom/appodeal/ads/utils/ExchangeAd$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/utils/ExchangeAd$$ExternalSyntheticLambda3;-><init>(Lcom/appodeal/ads/utils/ExchangeAd;)V

    .line 1
    const-string v1, ""

    const-string v2, "X-Appodeal-Url-Click"

    invoke-virtual {p0, v2, v1, v0}, Lcom/appodeal/ads/utils/ExchangeAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackError(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Appodeal-Url-Error"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/appodeal/ads/utils/ExchangeAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackFill()V
    .locals 3

    new-instance v0, Lcom/appodeal/ads/utils/ExchangeAd$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/utils/ExchangeAd$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/utils/ExchangeAd;)V

    .line 1
    const-string v1, ""

    const-string v2, "X-Appodeal-Url-Fill"

    invoke-virtual {p0, v2, v1, v0}, Lcom/appodeal/ads/utils/ExchangeAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackFinish()V
    .locals 3

    new-instance v0, Lcom/appodeal/ads/utils/ExchangeAd$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/utils/ExchangeAd$$ExternalSyntheticLambda2;-><init>(Lcom/appodeal/ads/utils/ExchangeAd;)V

    .line 1
    const-string v1, ""

    const-string v2, "X-Appodeal-Url-Finish"

    invoke-virtual {p0, v2, v1, v0}, Lcom/appodeal/ads/utils/ExchangeAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackImpression(I)V
    .locals 2

    iput p1, p0, Lcom/appodeal/ads/utils/ExchangeAd;->c:I

    new-instance p1, Lcom/appodeal/ads/utils/ExchangeAd$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/appodeal/ads/utils/ExchangeAd$$ExternalSyntheticLambda1;-><init>(Lcom/appodeal/ads/utils/ExchangeAd;)V

    .line 1
    const-string v0, ""

    const-string v1, "X-Appodeal-Url-Impression"

    invoke-virtual {p0, v1, v0, p1}, Lcom/appodeal/ads/utils/ExchangeAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/appodeal/ads/utils/ExchangeAd;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/appodeal/ads/utils/ExchangeAd;->b:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget p2, p0, Lcom/appodeal/ads/utils/ExchangeAd;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/appodeal/ads/utils/ExchangeAd;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
