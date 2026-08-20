.class public final Lcom/appodeal/ads/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/utils/h;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/utils/h;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/utils/g;->a:Lcom/appodeal/ads/utils/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/utils/g;->a:Lcom/appodeal/ads/utils/h;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/appodeal/ads/utils/j;

    invoke-direct {p2}, Lcom/appodeal/ads/utils/j;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p2, Lcom/appodeal/ads/utils/i;

    invoke-direct {p2}, Lcom/appodeal/ads/utils/i;-><init>()V

    .line 5
    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 6
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
