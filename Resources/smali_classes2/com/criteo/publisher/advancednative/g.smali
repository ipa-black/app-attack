.class public final Lcom/criteo/publisher/advancednative/g;
.super Ljava/lang/Object;
.source "CriteoImageLoader.kt"

# interfaces
.implements Lcom/criteo/publisher/advancednative/ImageLoader;


# instance fields
.field private final a:Lcom/squareup/picasso/Picasso;

.field private final b:Lcom/criteo/publisher/e0/a;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/criteo/publisher/e0/a;)V
    .locals 1

    const-string v0, "picasso"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncResources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/advancednative/g;->a:Lcom/squareup/picasso/Picasso;

    iput-object p2, p0, Lcom/criteo/publisher/advancednative/g;->b:Lcom/criteo/publisher/e0/a;

    return-void
.end method

.method public static final synthetic a(Lcom/criteo/publisher/advancednative/g;)Lcom/squareup/picasso/Picasso;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/criteo/publisher/advancednative/g;->a:Lcom/squareup/picasso/Picasso;

    return-object p0
.end method

.method public static final synthetic a(Lcom/criteo/publisher/advancednative/g;Lcom/squareup/picasso/RequestCreator;Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/criteo/publisher/advancednative/g;->a(Lcom/squareup/picasso/RequestCreator;Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/squareup/picasso/RequestCreator;Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;
    .locals 0

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const-string p2, "placeholder(placeholder)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public loadImageInto(Ljava/net/URL;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/g;->b:Lcom/criteo/publisher/e0/a;

    new-instance v1, Lcom/criteo/publisher/advancednative/g$a;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/criteo/publisher/advancednative/g$a;-><init>(Lcom/criteo/publisher/advancednative/g;Ljava/net/URL;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e0/a;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public preload(Ljava/net/URL;)V
    .locals 1

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/g;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fetch()V

    return-void
.end method
