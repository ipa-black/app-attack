.class public final Lcom/appodeal/ads/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/LinearLayout;

.field public final synthetic b:Lcom/appodeal/ads/c1$a;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/appodeal/ads/d1$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/a1;->a:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/appodeal/ads/a1;->b:Lcom/appodeal/ads/c1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "input_method"

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iget-object p4, p0, Lcom/appodeal/ads/a1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p2, p4, p5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p2, p0, Lcom/appodeal/ads/a1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p4, p0, Lcom/appodeal/ads/a1;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/utils/k;

    iget-object p2, p0, Lcom/appodeal/ads/a1;->b:Lcom/appodeal/ads/c1$a;

    if-eqz p2, :cond_0

    iget p3, p1, Lcom/appodeal/ads/utils/k;->g:I

    iget-boolean p1, p1, Lcom/appodeal/ads/utils/k;->f:Z

    check-cast p2, Lcom/appodeal/ads/d1$a$a;

    .line 1
    iget-object p2, p2, Lcom/appodeal/ads/d1$a$a;->a:Lcom/appodeal/ads/d1$a;

    .line 2
    iget-object p4, p2, Lcom/appodeal/ads/d1$a;->c:Lcom/appodeal/ads/u;

    iget-object p2, p2, Lcom/appodeal/ads/d1$a;->b:Lcom/appodeal/ads/r;

    const/4 p5, 0x1

    invoke-virtual {p4, p2, p3, p1, p5}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    :cond_0
    return-void
.end method
