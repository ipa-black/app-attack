.class public final Lcom/appodeal/ads/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/utils/l$b;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/l2;

.field public final synthetic b:Lcom/appodeal/ads/s2;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/s2;Lcom/appodeal/ads/l2;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/p2;->b:Lcom/appodeal/ads/s2;

    iput-object p2, p0, Lcom/appodeal/ads/p2;->a:Lcom/appodeal/ads/l2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/p2;->b:Lcom/appodeal/ads/s2;

    iget v1, v0, Lcom/appodeal/ads/s2;->t:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/appodeal/ads/s2;->t:I

    invoke-virtual {v0}, Lcom/appodeal/ads/s2;->m()V

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/p2;->a:Lcom/appodeal/ads/l2;

    .line 1
    iput-object p1, v0, Lcom/appodeal/ads/l2;->m:Landroid/graphics/Bitmap;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/p2;->b:Lcom/appodeal/ads/s2;

    iget v0, p1, Lcom/appodeal/ads/s2;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/appodeal/ads/s2;->t:I

    invoke-virtual {p1}, Lcom/appodeal/ads/s2;->m()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/p2;->a:Lcom/appodeal/ads/l2;

    .line 3
    iput-object p1, v0, Lcom/appodeal/ads/l2;->l:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/appodeal/ads/p2;->b:Lcom/appodeal/ads/s2;

    iget v0, p1, Lcom/appodeal/ads/s2;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/appodeal/ads/s2;->t:I

    invoke-virtual {p1}, Lcom/appodeal/ads/s2;->m()V

    return-void
.end method
