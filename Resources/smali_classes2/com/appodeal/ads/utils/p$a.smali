.class public final Lcom/appodeal/ads/utils/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/utils/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/appodeal/ads/utils/p$b;

.field public e:Landroid/graphics/Bitmap;


# direct methods
.method public static synthetic $r8$lambda$Rap1OY5UdkBFgY-_wfJj-o-4Y_0(Lcom/appodeal/ads/utils/p$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/utils/p$a;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/appodeal/ads/l2$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/utils/p$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/appodeal/ads/utils/p$a;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/appodeal/ads/utils/p$a;->c:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/appodeal/ads/utils/p$a;->d:Lcom/appodeal/ads/utils/p$b;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/utils/p$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/utils/p$a;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/appodeal/ads/utils/p$a;->d:Lcom/appodeal/ads/utils/p$b;

    check-cast v2, Lcom/appodeal/ads/l2$b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/p$a;->d:Lcom/appodeal/ads/utils/p$b;

    check-cast v0, Lcom/appodeal/ads/l2$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v0, "Native"

    const-string v1, "Assets Error"

    const-string v2, "Target ImageView or Bitmap is invalid"

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "Assets Error"

    const-string v1, "Native"

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v4, p0, Lcom/appodeal/ads/utils/p$a;->b:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v4, :cond_3

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/appodeal/ads/utils/p$a;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/appodeal/ads/utils/p;->a(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/appodeal/ads/utils/p;->a(IZ)I

    move-result v6

    .line 1
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    div-int v9, v7, v3

    if-gt v9, v4, :cond_2

    div-int v9, v8, v3

    if-le v9, v6, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v3, p0, Lcom/appodeal/ads/utils/p$a;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/appodeal/ads/utils/p$a;->e:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/appodeal/ads/utils/p$a$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/appodeal/ads/utils/p$a$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/utils/p$a;)V

    .line 3
    sget-object v3, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_2
    :goto_1
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 4
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/appodeal/ads/utils/p$a;->d:Lcom/appodeal/ads/utils/p$b;

    const-string v3, "Image size is (0;0)"

    check-cast v2, Lcom/appodeal/ads/l2$b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {v1, v0, v3}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/appodeal/ads/utils/p$a;->d:Lcom/appodeal/ads/utils/p$b;

    check-cast v2, Lcom/appodeal/ads/l2$b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    const-string v2, "ImagePreparation error"

    invoke-static {v1, v0, v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 8
    :cond_4
    iget-object v3, p0, Lcom/appodeal/ads/utils/p$a;->d:Lcom/appodeal/ads/utils/p$b;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    check-cast v3, Lcom/appodeal/ads/l2$b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {v1, v0, v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
