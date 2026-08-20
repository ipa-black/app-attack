.class public final Lcom/appodeal/ads/TestActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/TestActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/TestActivity;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/TestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/TestActivity$c;->a:Lcom/appodeal/ads/TestActivity;

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

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/utils/k;

    iget-object p2, p0, Lcom/appodeal/ads/TestActivity$c;->a:Lcom/appodeal/ads/TestActivity;

    .line 1
    iget-boolean p3, p2, Lcom/appodeal/ads/TestActivity;->i:Z

    if-eqz p3, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/TestActivity;->e()V

    iget-object p3, p2, Lcom/appodeal/ads/TestActivity;->h:Lcom/appodeal/ads/r;

    invoke-virtual {p3}, Lcom/appodeal/ads/r;->y()V

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/appodeal/ads/TestActivity;->k:Z

    iget p2, p2, Lcom/appodeal/ads/TestActivity;->a:I

    const/4 p4, 0x0

    if-eq p2, p3, :cond_6

    const/4 p5, 0x2

    if-eq p2, p5, :cond_5

    const/4 p5, 0x4

    if-eq p2, p5, :cond_4

    const/16 p5, 0x80

    if-eq p2, p5, :cond_3

    const/16 p5, 0x100

    if-eq p2, p5, :cond_2

    const/16 p5, 0x200

    if-eq p2, p5, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object p2

    iput-boolean p4, p2, Lcom/appodeal/ads/n2;->c:Z

    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object p2

    .line 3
    iget-object p2, p2, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    .line 4
    check-cast p2, Lcom/appodeal/ads/t2;

    iget p1, p1, Lcom/appodeal/ads/utils/k;->g:I

    .line 5
    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object p5

    invoke-virtual {p5, p2, p1, p4, p3}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    goto/16 :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/appodeal/ads/TestActivity;->a()V

    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object p2

    .line 7
    iget-object p2, p2, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    .line 8
    check-cast p2, Lcom/appodeal/ads/k2;

    iget p1, p1, Lcom/appodeal/ads/utils/k;->g:I

    .line 9
    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object p5

    invoke-virtual {p5, p2, p1, p4, p3}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lcom/appodeal/ads/TestActivity;->a()V

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object p2

    .line 11
    iget-object p2, p2, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    .line 12
    check-cast p2, Lcom/appodeal/ads/n4;

    iget p1, p1, Lcom/appodeal/ads/utils/k;->g:I

    .line 13
    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object p5

    invoke-virtual {p5, p2, p1, p4, p3}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {}, Lcom/appodeal/ads/TestActivity;->a()V

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object p2

    .line 15
    iget-object p2, p2, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    .line 16
    check-cast p2, Lcom/appodeal/ads/w0;

    iget p1, p1, Lcom/appodeal/ads/utils/k;->g:I

    .line 17
    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object p5

    invoke-virtual {p5, p2, p1, p4, p3}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    goto :goto_0

    .line 18
    :cond_5
    invoke-static {}, Lcom/appodeal/ads/TestActivity;->a()V

    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appodeal/ads/q1;->c()V

    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object p2

    .line 19
    iget-object p2, p2, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    .line 20
    check-cast p2, Lcom/appodeal/ads/q5;

    iget p1, p1, Lcom/appodeal/ads/utils/k;->g:I

    .line 21
    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object p5

    invoke-virtual {p5, p2, p1, p4, p3}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    goto :goto_0

    .line 22
    :cond_6
    invoke-static {}, Lcom/appodeal/ads/TestActivity;->a()V

    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appodeal/ads/q1;->c()V

    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object p2

    .line 23
    iget-object p2, p2, Lcom/appodeal/ads/u;->x:Lcom/appodeal/ads/r;

    .line 24
    check-cast p2, Lcom/appodeal/ads/r1;

    iget p1, p1, Lcom/appodeal/ads/utils/k;->g:I

    .line 25
    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object p5

    invoke-virtual {p5, p2, p1, p4, p3}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;IZZ)V

    :goto_0
    return-void
.end method
