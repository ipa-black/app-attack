.class public final Lcom/appodeal/ads/TestActivity$a;
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

    iput-object p1, p0, Lcom/appodeal/ads/TestActivity$a;->a:Lcom/appodeal/ads/TestActivity;

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

    check-cast p1, Lcom/appodeal/ads/utils/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x6

    .line 1
    invoke-static {p1}, Lcom/appodeal/ads/m;->b(I)[I

    move-result-object p1

    .line 2
    aget p1, p1, p3

    .line 3
    iget-object p2, p0, Lcom/appodeal/ads/TestActivity$a;->a:Lcom/appodeal/ads/TestActivity;

    .line 4
    invoke-static {p1}, Lcom/appodeal/ads/utils/a;->a(I)I

    move-result p3

    .line 5
    iput p3, p2, Lcom/appodeal/ads/TestActivity;->a:I

    .line 6
    invoke-static {p3}, Lcom/appodeal/ads/q4;->d(I)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/appodeal/ads/TestActivity$a;->a:Lcom/appodeal/ads/TestActivity;

    .line 7
    iget p2, p1, Lcom/appodeal/ads/TestActivity;->a:I

    const/4 p4, 0x1

    .line 8
    invoke-static {p2, p4}, Lcom/appodeal/ads/q4;->b(IZ)V

    invoke-static {p2, p3}, Lcom/appodeal/ads/q4;->a(IZ)V

    if-eq p2, p4, :cond_5

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    const/4 p3, 0x4

    if-eq p2, p3, :cond_3

    const/16 p3, 0x80

    if-eq p2, p3, :cond_2

    const/16 p3, 0x100

    if-eq p2, p3, :cond_1

    const/16 p3, 0x200

    if-eq p2, p3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/TestActivity;->e()V

    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/appodeal/ads/n2;->b(I)V

    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object p2

    iget-boolean p1, p1, Lcom/appodeal/ads/TestActivity;->b:Z

    invoke-virtual {p2, p4, p1, p4}, Lcom/appodeal/ads/n2;->a(ZZZ)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/TestActivity;->e()V

    new-instance p2, Lcom/appodeal/ads/h2$d;

    invoke-direct {p2}, Lcom/appodeal/ads/h2$d;-><init>()V

    .line 9
    iput-boolean p4, p2, Lcom/appodeal/ads/s;->a:Z

    .line 10
    iput-boolean p4, p2, Lcom/appodeal/ads/s;->c:Z

    .line 11
    iget-boolean p3, p1, Lcom/appodeal/ads/TestActivity;->b:Z

    .line 12
    iput-boolean p3, p2, Lcom/appodeal/ads/s;->b:Z

    .line 13
    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/appodeal/ads/u;->b(Landroid/content/Context;Lcom/appodeal/ads/s;)V

    goto/16 :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/TestActivity;->e()V

    new-instance p2, Lcom/appodeal/ads/o4$a;

    invoke-direct {p2}, Lcom/appodeal/ads/o4$a;-><init>()V

    .line 15
    iput-boolean p4, p2, Lcom/appodeal/ads/s;->a:Z

    .line 16
    iput-boolean p4, p2, Lcom/appodeal/ads/s;->c:Z

    .line 17
    iget-boolean p3, p1, Lcom/appodeal/ads/TestActivity;->b:Z

    .line 18
    iput-boolean p3, p2, Lcom/appodeal/ads/s;->b:Z

    .line 19
    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/appodeal/ads/u;->b(Landroid/content/Context;Lcom/appodeal/ads/s;)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/appodeal/ads/TestActivity;->e()V

    new-instance p2, Lcom/appodeal/ads/t0$d;

    invoke-direct {p2}, Lcom/appodeal/ads/t0$d;-><init>()V

    .line 21
    iput-boolean p4, p2, Lcom/appodeal/ads/s;->a:Z

    .line 22
    iput-boolean p4, p2, Lcom/appodeal/ads/s;->c:Z

    .line 23
    iget-boolean p3, p1, Lcom/appodeal/ads/TestActivity;->b:Z

    .line 24
    iput-boolean p3, p2, Lcom/appodeal/ads/s;->b:Z

    .line 25
    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/appodeal/ads/u;->b(Landroid/content/Context;Lcom/appodeal/ads/s;)V

    goto :goto_1

    .line 26
    :cond_4
    invoke-virtual {p1}, Lcom/appodeal/ads/TestActivity;->e()V

    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object p2

    iget-object p2, p2, Lcom/appodeal/ads/q1;->e:Lcom/appodeal/ads/q1$b;

    new-instance p3, Lcom/appodeal/ads/w2$a;

    invoke-direct {p3}, Lcom/appodeal/ads/w2$a;-><init>()V

    .line 27
    iput-boolean p4, p3, Lcom/appodeal/ads/s;->a:Z

    .line 28
    iput-boolean p4, p3, Lcom/appodeal/ads/s;->c:Z

    .line 29
    iget-boolean p4, p1, Lcom/appodeal/ads/TestActivity;->b:Z

    .line 30
    iput-boolean p4, p3, Lcom/appodeal/ads/s;->b:Z

    goto :goto_0

    .line 31
    :cond_5
    invoke-virtual {p1}, Lcom/appodeal/ads/TestActivity;->e()V

    invoke-static {}, Lcom/appodeal/ads/q1;->a()Lcom/appodeal/ads/q1;

    move-result-object p2

    iget-object p2, p2, Lcom/appodeal/ads/q1;->d:Lcom/appodeal/ads/q1$a;

    new-instance p3, Lcom/appodeal/ads/o1$c;

    invoke-direct {p3}, Lcom/appodeal/ads/o1$c;-><init>()V

    .line 32
    iput-boolean p4, p3, Lcom/appodeal/ads/s;->a:Z

    .line 33
    iput-boolean p4, p3, Lcom/appodeal/ads/s;->c:Z

    .line 34
    iget-boolean p4, p1, Lcom/appodeal/ads/TestActivity;->b:Z

    .line 35
    iput-boolean p4, p3, Lcom/appodeal/ads/s;->b:Z

    .line 36
    :goto_0
    invoke-virtual {p2, p1, p3}, Lcom/appodeal/ads/q1$c;->a(Landroid/content/Context;Lcom/appodeal/ads/s;)V

    goto :goto_1

    .line 37
    :cond_6
    iget-object p2, p0, Lcom/appodeal/ads/TestActivity$a;->a:Lcom/appodeal/ads/TestActivity;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/appodeal/ads/utils/a;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " isn\'t initialized"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
