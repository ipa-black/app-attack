.class public Lcom/yandex/metrica/impl/ob/Vc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/vc;

.field private final b:Lcom/yandex/metrica/impl/ob/Xj;

.field private final c:Lcom/yandex/metrica/impl/ob/H2;

.field private final d:Lcom/yandex/metrica/impl/ob/qc;

.field private final e:Lcom/yandex/metrica/impl/ob/e9;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/vc;Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/e9;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->v()Lcom/yandex/metrica/impl/ob/Xj;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->i()Lcom/yandex/metrica/impl/ob/qc;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/Vc;-><init>(Lcom/yandex/metrica/impl/ob/vc;Lcom/yandex/metrica/impl/ob/Xj;Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/qc;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/vc;Lcom/yandex/metrica/impl/ob/Xj;Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/qc;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Vc;->a:Lcom/yandex/metrica/impl/ob/vc;

    .line 8
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Vc;->b:Lcom/yandex/metrica/impl/ob/Xj;

    .line 9
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Vc;->c:Lcom/yandex/metrica/impl/ob/H2;

    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Vc;->e:Lcom/yandex/metrica/impl/ob/e9;

    .line 11
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Vc;->d:Lcom/yandex/metrica/impl/ob/qc;

    .line 12
    invoke-virtual {p5, p2}, Lcom/yandex/metrica/impl/ob/qc;->a(Lcom/yandex/metrica/impl/ob/nc;)V

    .line 14
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/Vc;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vc;->e:Lcom/yandex/metrica/impl/ob/e9;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e9;->g()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Vc;->a:Lcom/yandex/metrica/impl/ob/vc;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/vc;->a(Z)V

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Vc;->c:Lcom/yandex/metrica/impl/ob/H2;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/H2;->a(Z)V

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Vc;->b:Lcom/yandex/metrica/impl/ob/Xj;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/Xj;->a(Z)V

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vc;->d:Lcom/yandex/metrica/impl/ob/qc;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/qc;->c()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vc;->d:Lcom/yandex/metrica/impl/ob/qc;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/qc;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vc;->c:Lcom/yandex/metrica/impl/ob/H2;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/H2;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vc;->b:Lcom/yandex/metrica/impl/ob/Xj;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xj;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vc;->a:Lcom/yandex/metrica/impl/ob/vc;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/vc;->a(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Vc;->b:Lcom/yandex/metrica/impl/ob/Xj;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Xj;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vc;->a:Lcom/yandex/metrica/impl/ob/vc;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/vc;->a(Z)V

    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vc;->b:Lcom/yandex/metrica/impl/ob/Xj;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xj;->a(Z)V

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vc;->c:Lcom/yandex/metrica/impl/ob/H2;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/H2;->a(Z)V

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vc;->e:Lcom/yandex/metrica/impl/ob/e9;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/e9;->d(Z)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Vc;->a:Lcom/yandex/metrica/impl/ob/vc;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/vc;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Vc;->b:Lcom/yandex/metrica/impl/ob/Xj;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Xj;->b()V

    return-void
.end method
