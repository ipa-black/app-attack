.class public Lcom/yandex/metrica/impl/ob/L3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/S3;
.implements Lcom/yandex/metrica/impl/ob/P3;
.implements Lcom/yandex/metrica/impl/ob/pb;
.implements Lcom/yandex/metrica/impl/ob/Lg$d;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/I3;

.field private final c:Lcom/yandex/metrica/impl/ob/c9;

.field private final d:Lcom/yandex/metrica/impl/ob/e9;

.field private final e:Lcom/yandex/metrica/impl/ob/a9;

.field private final f:Lcom/yandex/metrica/impl/ob/S1;

.field private final g:Lcom/yandex/metrica/impl/ob/L7;

.field private final h:Lcom/yandex/metrica/impl/ob/L4;

.field private final i:Lcom/yandex/metrica/impl/ob/I4;

.field private final j:Lcom/yandex/metrica/impl/ob/s;

.field private final k:Lcom/yandex/metrica/impl/ob/B3;

.field private final l:Lcom/yandex/metrica/impl/ob/b6;

.field private final m:Lcom/yandex/metrica/impl/ob/Z3;

.field private final n:Lcom/yandex/metrica/impl/ob/M5;

.field private final o:Lcom/yandex/metrica/impl/ob/cm;

.field private final p:Lcom/yandex/metrica/impl/ob/Sl;

.field private final q:Lcom/yandex/metrica/impl/ob/a4;

.field private final r:Lcom/yandex/metrica/impl/ob/K3$b;

.field private final s:Lcom/yandex/metrica/impl/ob/ob;

.field private final t:Lcom/yandex/metrica/impl/ob/lb;

.field private final u:Lcom/yandex/metrica/impl/ob/qb;

.field private final v:Lcom/yandex/metrica/impl/ob/H;

.field private final w:Lcom/yandex/metrica/impl/ob/x2;

.field private final x:Lcom/yandex/metrica/impl/ob/I1;

.field private final y:Lcom/yandex/metrica/impl/ob/b8;

.field private final z:Lcom/yandex/metrica/impl/ob/h6;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/B3;Lcom/yandex/metrica/impl/ob/x2;Lcom/yandex/metrica/impl/ob/M3;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/L3;->b:Lcom/yandex/metrica/impl/ob/I3;

    .line 6
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/L3;->k:Lcom/yandex/metrica/impl/ob/B3;

    .line 7
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/L3;->w:Lcom/yandex/metrica/impl/ob/x2;

    .line 8
    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/M3;->e()Lcom/yandex/metrica/impl/ob/b8;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/L3;->y:Lcom/yandex/metrica/impl/ob/b8;

    .line 9
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F0;->k()Lcom/yandex/metrica/impl/ob/I1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->x:Lcom/yandex/metrica/impl/ob/I1;

    .line 10
    invoke-virtual {p5, p0}, Lcom/yandex/metrica/impl/ob/M3;->a(Lcom/yandex/metrica/impl/ob/L3;)Lcom/yandex/metrica/impl/ob/Z3;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->m:Lcom/yandex/metrica/impl/ob/Z3;

    .line 11
    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/M3;->c()Lcom/yandex/metrica/impl/ob/M3$b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/M3$b;->b()Lcom/yandex/metrica/impl/ob/cm;

    move-result-object p4

    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/L3;->o:Lcom/yandex/metrica/impl/ob/cm;

    .line 12
    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/M3;->c()Lcom/yandex/metrica/impl/ob/M3$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/M3$b;->a()Lcom/yandex/metrica/impl/ob/Sl;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->p:Lcom/yandex/metrica/impl/ob/Sl;

    .line 13
    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/M3;->d()Lcom/yandex/metrica/impl/ob/M3$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/M3$c;->a()Lcom/yandex/metrica/impl/ob/c9;

    move-result-object v8

    iput-object v8, p0, Lcom/yandex/metrica/impl/ob/L3;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 14
    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/M3;->d()Lcom/yandex/metrica/impl/ob/M3$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/M3$c;->b()Lcom/yandex/metrica/impl/ob/a9;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/L3;->e:Lcom/yandex/metrica/impl/ob/a9;

    .line 15
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/F0;->s()Lcom/yandex/metrica/impl/ob/e9;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/L3;->d:Lcom/yandex/metrica/impl/ob/e9;

    .line 16
    invoke-virtual {p3, p2, p4, v8}, Lcom/yandex/metrica/impl/ob/B3;->a(Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/cm;Lcom/yandex/metrica/impl/ob/c9;)Lcom/yandex/metrica/impl/ob/s;

    move-result-object v5

    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/L3;->j:Lcom/yandex/metrica/impl/ob/s;

    .line 17
    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/M3;->a()Lcom/yandex/metrica/impl/ob/M5;

    move-result-object p3

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/L3;->n:Lcom/yandex/metrica/impl/ob/M5;

    .line 18
    invoke-virtual {p5, p0}, Lcom/yandex/metrica/impl/ob/M3;->b(Lcom/yandex/metrica/impl/ob/L3;)Lcom/yandex/metrica/impl/ob/L7;

    move-result-object p3

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/L3;->g:Lcom/yandex/metrica/impl/ob/L7;

    .line 19
    invoke-virtual {p5, p0}, Lcom/yandex/metrica/impl/ob/M3;->e(Lcom/yandex/metrica/impl/ob/L3;)Lcom/yandex/metrica/impl/ob/S1;

    move-result-object v7

    iput-object v7, p0, Lcom/yandex/metrica/impl/ob/L3;->f:Lcom/yandex/metrica/impl/ob/S1;

    .line 24
    invoke-virtual {p5, p0}, Lcom/yandex/metrica/impl/ob/M3;->d(Lcom/yandex/metrica/impl/ob/L3;)Lcom/yandex/metrica/impl/ob/K3$b;

    move-result-object p4

    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/L3;->r:Lcom/yandex/metrica/impl/ob/K3$b;

    .line 25
    invoke-virtual {p5, p3, p1}, Lcom/yandex/metrica/impl/ob/M3;->a(Lcom/yandex/metrica/impl/ob/L7;Lcom/yandex/metrica/impl/ob/Z3;)Lcom/yandex/metrica/impl/ob/qb;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->u:Lcom/yandex/metrica/impl/ob/qb;

    .line 26
    invoke-virtual {p5, p3}, Lcom/yandex/metrica/impl/ob/M3;->a(Lcom/yandex/metrica/impl/ob/L7;)Lcom/yandex/metrica/impl/ob/lb;

    move-result-object p4

    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/L3;->t:Lcom/yandex/metrica/impl/ob/lb;

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p5, v1, p0}, Lcom/yandex/metrica/impl/ob/M3;->a(Ljava/util/List;Lcom/yandex/metrica/impl/ob/pb;)Lcom/yandex/metrica/impl/ob/ob;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->s:Lcom/yandex/metrica/impl/ob/ob;

    .line 32
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/L3;->z()V

    .line 34
    new-instance p1, Lcom/yandex/metrica/impl/ob/L3$a;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/L3$a;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    invoke-virtual {p5, p0, v2, p1}, Lcom/yandex/metrica/impl/ob/M3;->a(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/b8;Lcom/yandex/metrica/impl/ob/b6$a;)Lcom/yandex/metrica/impl/ob/b6;

    move-result-object v3

    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/L3;->l:Lcom/yandex/metrica/impl/ob/b6;

    .line 44
    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/I3;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/s;->a()Lcom/yandex/metrica/impl/ob/s$a;

    move-result-object p2

    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/s$a;->a:Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Read app environment for component %s. Value: %s"

    .line 47
    invoke-virtual {v0, p2, p1}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->fi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_0
    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/M3;->b()Lcom/yandex/metrica/impl/ob/h6;

    move-result-object v6

    iput-object v6, p0, Lcom/yandex/metrica/impl/ob/L3;->z:Lcom/yandex/metrica/impl/ob/h6;

    move-object v0, p5

    move-object v1, v8

    move-object v4, p3

    .line 52
    invoke-virtual/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/M3;->a(Lcom/yandex/metrica/impl/ob/c9;Lcom/yandex/metrica/impl/ob/b8;Lcom/yandex/metrica/impl/ob/b6;Lcom/yandex/metrica/impl/ob/L7;Lcom/yandex/metrica/impl/ob/s;Lcom/yandex/metrica/impl/ob/h6;Lcom/yandex/metrica/impl/ob/S1;)Lcom/yandex/metrica/impl/ob/a4;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->q:Lcom/yandex/metrica/impl/ob/a4;

    .line 62
    invoke-virtual {p5, p0}, Lcom/yandex/metrica/impl/ob/M3;->c(Lcom/yandex/metrica/impl/ob/L3;)Lcom/yandex/metrica/impl/ob/I4;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->i:Lcom/yandex/metrica/impl/ob/I4;

    .line 63
    invoke-virtual {p5, p0, p1}, Lcom/yandex/metrica/impl/ob/M3;->a(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/I4;)Lcom/yandex/metrica/impl/ob/L4;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->h:Lcom/yandex/metrica/impl/ob/L4;

    .line 64
    invoke-virtual {p5, v8}, Lcom/yandex/metrica/impl/ob/M3;->a(Lcom/yandex/metrica/impl/ob/c9;)Lcom/yandex/metrica/impl/ob/H;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->v:Lcom/yandex/metrica/impl/ob/H;

    .line 66
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/L7;->e()V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/L3;)Lcom/yandex/metrica/impl/ob/a4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/L3;->q:Lcom/yandex/metrica/impl/ob/a4;

    return-object p0
.end method

.method private z()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L3;->c:Lcom/yandex/metrica/impl/ob/c9;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/c9;->j()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L3;->y:Lcom/yandex/metrica/impl/ob/b8;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/b8;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 7
    new-instance v1, Lcom/yandex/metrica/impl/ob/Id;

    .line 8
    new-instance v2, Lcom/yandex/metrica/impl/ob/Jd;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/L3;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/L3;->b:Lcom/yandex/metrica/impl/ob/I3;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/I3;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/Jd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Id;-><init>(Lcom/yandex/metrica/impl/ob/Jd;)V

    .line 10
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L3;->r:Lcom/yandex/metrica/impl/ob/K3$b;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/K3$b;->a(Lcom/yandex/metrica/impl/ob/Id;)Lcom/yandex/metrica/impl/ob/K3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/K3;->a()V

    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L3;->y:Lcom/yandex/metrica/impl/ob/b8;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/b8;->b(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Lg;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Eg;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L3;->w:Lcom/yandex/metrica/impl/ob/x2;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L3;->q:Lcom/yandex/metrica/impl/ob/a4;

    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a4;->a()J

    move-result-wide v3

    .line 6
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Lg;->K()J

    move-result-wide v5

    const-string v7, "need to check permissions"

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/yandex/metrica/impl/ob/x2;->b(JJLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->q:Lcom/yandex/metrica/impl/ob/a4;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a4;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Eg;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->q:Lcom/yandex/metrica/impl/ob/a4;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a4;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Lg;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Eg;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->m:Lcom/yandex/metrica/impl/ob/Z3;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Gg;->e()V

    return-void
.end method

.method public E()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Lg;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L3;->w:Lcom/yandex/metrica/impl/ob/x2;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L3;->q:Lcom/yandex/metrica/impl/ob/a4;

    .line 4
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a4;->a()J

    move-result-wide v3

    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Lg;->L()J

    move-result-wide v5

    const-string v7, "should force send permissions"

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcom/yandex/metrica/impl/ob/x2;->b(JJLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->x:Lcom/yandex/metrica/impl/ob/I1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/r0;->b()Lcom/yandex/metrica/impl/ob/v0;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/ee;

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/ee;->d:Z

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L3;->m:Lcom/yandex/metrica/impl/ob/Z3;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Gg;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->N()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    return v0
.end method

.method public G()V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/D3$a;)V
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->m:Lcom/yandex/metrica/impl/ob/Z3;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Gg;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    .line 70
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->k:Ljava/lang/Boolean;

    .line 71
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->o:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->setEnabled()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/D3$a;->k:Ljava/lang/Boolean;

    .line 74
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->o:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->setDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->o:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->o:Lcom/yandex/metrica/impl/ob/cm;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->o()I

    move-result v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/z0;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event received on service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->o()I

    move-result v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/z0;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " with value "

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->i(Ljava/lang/String;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->b:Lcom/yandex/metrica/impl/ob/I3;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/I3;->a()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "-1"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->h:Lcom/yandex/metrica/impl/ob/L4;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/L4;->a(Lcom/yandex/metrica/impl/ob/c0;)Z

    :cond_2
    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/gi;Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->m:Lcom/yandex/metrica/impl/ob/Z3;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Gg;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->g:Lcom/yandex/metrica/impl/ob/L7;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/L7;->b(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 79
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->s:Lcom/yandex/metrica/impl/ob/ob;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ob;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->c:Lcom/yandex/metrica/impl/ob/c9;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/c9;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->j:Lcom/yandex/metrica/impl/ob/s;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/s;->b()V

    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->k:Lcom/yandex/metrica/impl/ob/B3;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L3;->j:Lcom/yandex/metrica/impl/ob/s;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/s;->a()Lcom/yandex/metrica/impl/ob/s$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L3;->c:Lcom/yandex/metrica/impl/ob/c9;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/c9;->a(Lcom/yandex/metrica/impl/ob/s$a;)Lcom/yandex/metrica/impl/ob/c9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/d9;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public b(Lcom/yandex/metrica/impl/ob/c0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->j:Lcom/yandex/metrica/impl/ob/s;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->b()Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/s;->a(Landroid/util/Pair;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/L3;->j:Lcom/yandex/metrica/impl/ob/s;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/s;->a()Lcom/yandex/metrica/impl/ob/s$a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->k:Lcom/yandex/metrica/impl/ob/B3;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L3;->c:Lcom/yandex/metrica/impl/ob/c9;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v2, p1, Lcom/yandex/metrica/impl/ob/s$a;->b:J

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/c9;->f()Lcom/yandex/metrica/impl/ob/s$a;

    move-result-object v4

    iget-wide v4, v4, Lcom/yandex/metrica/impl/ob/s$a;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 5
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/c9;->a(Lcom/yandex/metrica/impl/ob/s$a;)Lcom/yandex/metrica/impl/ob/c9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/d9;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->o:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->o:Lcom/yandex/metrica/impl/ob/cm;

    const-string v1, "Save new app environment for %s. Value: %s"

    .line 8
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L3;->b:Lcom/yandex/metrica/impl/ob/I3;

    .line 9
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/s$a;->a:Ljava/lang/String;

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->fi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->c:Lcom/yandex/metrica/impl/ob/c9;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/c9;->i(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->f:Lcom/yandex/metrica/impl/ob/S1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/w2;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/H;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->v:Lcom/yandex/metrica/impl/ob/H;

    return-object v0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/I3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->b:Lcom/yandex/metrica/impl/ob/I3;

    return-object v0
.end method

.method public f()Lcom/yandex/metrica/impl/ob/c9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->c:Lcom/yandex/metrica/impl/ob/c9;

    return-object v0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->a:Landroid/content/Context;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->c:Lcom/yandex/metrica/impl/ob/c9;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/c9;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/yandex/metrica/impl/ob/L7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->g:Lcom/yandex/metrica/impl/ob/L7;

    return-object v0
.end method

.method public j()Lcom/yandex/metrica/impl/ob/M5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->n:Lcom/yandex/metrica/impl/ob/M5;

    return-object v0
.end method

.method protected k()Lcom/yandex/metrica/impl/ob/I4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->i:Lcom/yandex/metrica/impl/ob/I4;

    return-object v0
.end method

.method public l()Lcom/yandex/metrica/impl/ob/ob;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->s:Lcom/yandex/metrica/impl/ob/ob;

    return-object v0
.end method

.method public m()Lcom/yandex/metrica/impl/ob/Lg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->m:Lcom/yandex/metrica/impl/ob/Z3;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Gg;->b()Lcom/yandex/metrica/impl/ob/Eg;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Lg;

    return-object v0
.end method

.method public final n()Lcom/yandex/metrica/impl/ob/Jd;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Jd;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L3;->b:Lcom/yandex/metrica/impl/ob/I3;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/I3;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Jd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public o()Lcom/yandex/metrica/impl/ob/a9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->e:Lcom/yandex/metrica/impl/ob/a9;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->c:Lcom/yandex/metrica/impl/ob/c9;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/c9;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/yandex/metrica/impl/ob/cm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->o:Lcom/yandex/metrica/impl/ob/cm;

    return-object v0
.end method

.method public r()Lcom/yandex/metrica/impl/ob/a4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->q:Lcom/yandex/metrica/impl/ob/a4;

    return-object v0
.end method

.method public s()Lcom/yandex/metrica/CounterConfiguration$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$b;->c:Lcom/yandex/metrica/CounterConfiguration$b;

    return-object v0
.end method

.method public t()Lcom/yandex/metrica/impl/ob/e9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->d:Lcom/yandex/metrica/impl/ob/e9;

    return-object v0
.end method

.method public u()Lcom/yandex/metrica/impl/ob/h6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->z:Lcom/yandex/metrica/impl/ob/h6;

    return-object v0
.end method

.method public v()Lcom/yandex/metrica/impl/ob/b6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->l:Lcom/yandex/metrica/impl/ob/b6;

    return-object v0
.end method

.method public w()Lcom/yandex/metrica/impl/ob/pi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->m:Lcom/yandex/metrica/impl/ob/Z3;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Gg;->d()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/yandex/metrica/impl/ob/b8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->y:Lcom/yandex/metrica/impl/ob/b8;

    return-object v0
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L3;->q:Lcom/yandex/metrica/impl/ob/a4;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a4;->b()V

    return-void
.end method
