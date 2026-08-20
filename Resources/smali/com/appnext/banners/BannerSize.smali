.class public Lcom/appnext/banners/BannerSize;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BANNER:Lcom/appnext/banners/BannerSize;

.field public static final LARGE_BANNER:Lcom/appnext/banners/BannerSize;

.field public static final MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;


# instance fields
.field private height:I

.field private name:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/appnext/banners/BannerSize;

    const/16 v1, 0x32

    const-string v2, "BANNER"

    const/16 v3, 0x140

    invoke-direct {v0, v3, v1, v2}, Lcom/appnext/banners/BannerSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    .line 6
    new-instance v0, Lcom/appnext/banners/BannerSize;

    const/16 v1, 0x64

    const-string v2, "LARGE_BANNER"

    invoke-direct {v0, v3, v1, v2}, Lcom/appnext/banners/BannerSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/appnext/banners/BannerSize;->LARGE_BANNER:Lcom/appnext/banners/BannerSize;

    .line 7
    new-instance v0, Lcom/appnext/banners/BannerSize;

    const/16 v1, 0xfa

    const-string v2, "MEDIUM_RECTANGLE"

    const/16 v3, 0x12c

    invoke-direct {v0, v3, v1, v2}, Lcom/appnext/banners/BannerSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/appnext/banners/BannerSize;->MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/appnext/banners/BannerSize;->width:I

    .line 15
    iput p2, p0, Lcom/appnext/banners/BannerSize;->height:I

    .line 16
    iput-object p3, p0, Lcom/appnext/banners/BannerSize;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 22
    :cond_0
    instance-of v1, p1, Lcom/appnext/banners/BannerSize;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 25
    :cond_1
    check-cast p1, Lcom/appnext/banners/BannerSize;

    .line 26
    iget v1, p0, Lcom/appnext/banners/BannerSize;->width:I

    iget v3, p1, Lcom/appnext/banners/BannerSize;->width:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/appnext/banners/BannerSize;->height:I

    iget v3, p1, Lcom/appnext/banners/BannerSize;->height:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/appnext/banners/BannerSize;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/appnext/banners/BannerSize;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getHeight()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/appnext/banners/BannerSize;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/appnext/banners/BannerSize;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/appnext/banners/BannerSize;->name:Ljava/lang/String;

    return-object v0
.end method
