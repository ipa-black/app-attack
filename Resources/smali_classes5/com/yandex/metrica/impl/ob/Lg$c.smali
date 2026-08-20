.class public Lcom/yandex/metrica/impl/ob/Lg$c;
.super Lcom/yandex/metrica/impl/ob/Hg$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/Lg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Hg$a<",
        "Lcom/yandex/metrica/impl/ob/Lg;",
        "Lcom/yandex/metrica/impl/ob/Lg$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lcom/yandex/metrica/impl/ob/L3;

.field private final e:Lcom/yandex/metrica/impl/ob/Lg$e;

.field private final f:Lcom/yandex/metrica/impl/ob/Rh;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/Lg$e;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rh;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Rh;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Lg$c;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/Lg$e;Lcom/yandex/metrica/impl/ob/Rh;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/Lg$e;Lcom/yandex/metrica/impl/ob/Rh;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->e()Lcom/yandex/metrica/impl/ob/I3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/I3;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Hg$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Lg$c;->d:Lcom/yandex/metrica/impl/ob/L3;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Lg$c;->e:Lcom/yandex/metrica/impl/ob/Lg$e;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Lg$c;->f:Lcom/yandex/metrica/impl/ob/Rh;

    return-void
.end method


# virtual methods
.method protected a()Lcom/yandex/metrica/impl/ob/Eg;
    .locals 2

    .line 53
    new-instance v0, Lcom/yandex/metrica/impl/ob/Lg;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Lg$c;->d:Lcom/yandex/metrica/impl/ob/L3;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Lg;-><init>(Lcom/yandex/metrica/impl/ob/Lg$d;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/Eg;
    .locals 4

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Eg$c;

    .line 2
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Hg$a;->a(Lcom/yandex/metrica/impl/ob/Eg$c;)Lcom/yandex/metrica/impl/ob/Hg;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Lg;

    .line 5
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Lg$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Lg$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/Lg;->a(Lcom/yandex/metrica/impl/ob/Lg;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Lg$c;->d:Lcom/yandex/metrica/impl/ob/L3;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/L3;->x()Lcom/yandex/metrica/impl/ob/b8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/b8;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Lg;->a(I)V

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Lg$c;->d:Lcom/yandex/metrica/impl/ob/L3;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/L3;->d()Lcom/yandex/metrica/impl/ob/H;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/H;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Lg;->a(Ljava/util/List;)V

    .line 9
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Lg$a;

    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/Lg$a;->f:Z

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Lg;->d(Z)V

    .line 10
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Lg$a;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Lg$a;->e:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Lg;->a(Landroid/location/Location;)V

    .line 11
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Lg$a;

    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/Lg$a;->g:Z

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Lg;->c(Z)V

    .line 12
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Lg$a;

    iget v1, v1, Lcom/yandex/metrica/impl/ob/Lg$a;->h:I

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Lg;->d(I)V

    .line 13
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Lg$a;

    iget v1, v1, Lcom/yandex/metrica/impl/ob/Lg$a;->i:I

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Lg;->c(I)V

    .line 14
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Lg$a;

    iget v1, v1, Lcom/yandex/metrica/impl/ob/Lg$a;->j:I

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Lg;->b(I)V

    .line 15
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Lg$a;

    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/Lg$a;->k:Z

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Lg;->e(Z)V

    .line 16
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Lg$a;

    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/Lg$a;->l:Z

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Lg$c;->e:Lcom/yandex/metrica/impl/ob/Lg$e;

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Lg;->a(Ljava/lang/Boolean;Lcom/yandex/metrica/impl/ob/Lg$e;)V

    .line 22
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/yandex/metrica/impl/ob/Lg$a;

    iget v1, v1, Lcom/yandex/metrica/impl/ob/Lg$a;->n:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Lg;->a(J)V

    .line 23
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->a:Lcom/yandex/metrica/impl/ob/pi;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Eg$c;->b:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/metrica/impl/ob/Lg$a;

    .line 24
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->y()Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Lg$a;->d:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->z()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->H()Ljava/util/List;

    move-result-object v2

    .line 30
    :goto_0
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Lg;->b(Ljava/util/List;)V

    .line 31
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->f()Lcom/yandex/metrica/impl/ob/Sh;

    move-result-object v2

    iget-boolean v2, v2, Lcom/yandex/metrica/impl/ob/Sh;->c:Z

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Lg;->f(Z)V

    .line 32
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->F()Lcom/yandex/metrica/impl/ob/ai;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->F()Lcom/yandex/metrica/impl/ob/ai;

    move-result-object v2

    iget-wide v2, v2, Lcom/yandex/metrica/impl/ob/ai;->a:J

    .line 35
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/Lg;->b(J)V

    .line 39
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->F()Lcom/yandex/metrica/impl/ob/ai;

    move-result-object v2

    iget-wide v2, v2, Lcom/yandex/metrica/impl/ob/ai;->b:J

    .line 40
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/Lg;->c(J)V

    .line 44
    :cond_1
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->f()Lcom/yandex/metrica/impl/ob/Sh;

    move-result-object v2

    iget-boolean v2, v2, Lcom/yandex/metrica/impl/ob/Sh;->d:Z

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Lg;->b(Z)V

    .line 45
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/Lg;->h(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Lg$c;->f:Lcom/yandex/metrica/impl/ob/Rh;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Lg$a;->m:Ljava/util/Map;

    .line 50
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/F0;->d()Lcom/yandex/metrica/impl/ob/I;

    move-result-object v3

    .line 51
    invoke-virtual {v2, p1, v1, v3}, Lcom/yandex/metrica/impl/ob/Rh;->a(Ljava/util/Map;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/I;)Z

    move-result p1

    .line 52
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Lg;->a(Z)V

    return-object v0
.end method
