.class public Lcom/yandex/metrica/impl/ob/E9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/Sh;",
        "Lcom/yandex/metrica/impl/ob/If$i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/F1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/li;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/li;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/E9;-><init>(Lcom/yandex/metrica/impl/ob/F1;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/F1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/E9;->a:Lcom/yandex/metrica/impl/ob/F1;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Sh;)Lcom/yandex/metrica/impl/ob/If$i;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$i;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$i;-><init>()V

    .line 2
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->d:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->d:Z

    .line 3
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->c:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->c:Z

    .line 4
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->b:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->b:Z

    .line 5
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->a:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->a:Z

    .line 6
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->e:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->j:Z

    .line 7
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->f:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->k:Z

    .line 8
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->n:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->e:Z

    .line 9
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->r:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->h:Z

    .line 10
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->s:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->i:Z

    .line 11
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->o:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->r:Z

    .line 12
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->p:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->f:Z

    .line 13
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->q:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->g:Z

    .line 14
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->h:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->m:Z

    .line 15
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->g:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->l:Z

    .line 16
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->i:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->n:Z

    .line 17
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->j:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->o:Z

    .line 18
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->l:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->p:Z

    .line 19
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->m:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->u:Z

    .line 20
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->k:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->q:Z

    .line 21
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->t:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->s:Z

    .line 22
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->u:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->t:Z

    .line 23
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->v:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->v:Z

    .line 24
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Sh;->w:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$i;->w:Z

    .line 25
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/E9;->a:Lcom/yandex/metrica/impl/ob/F1;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Sh;->x:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/F1;->a(Ljava/lang/Boolean;)I

    move-result p1

    iput p1, v0, Lcom/yandex/metrica/impl/ob/If$i;->x:I

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/If$i;)Lcom/yandex/metrica/impl/ob/Sh;
    .locals 2

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/Sh$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Sh$a;-><init>()V

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->a:Z

    .line 27
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->d(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->i:Z

    .line 28
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->p(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->h:Z

    .line 29
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->c(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->r:Z

    .line 30
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->q(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->g:Z

    .line 31
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->w(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->f:Z

    .line 32
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->v(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->e:Z

    .line 33
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->g(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->d:Z

    .line 34
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->f(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->j:Z

    .line 35
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->o(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->k:Z

    .line 36
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->j(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->c:Z

    .line 37
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->n(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->b:Z

    .line 38
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->m(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->m:Z

    .line 39
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->k(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->l:Z

    .line 40
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->l(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->n:Z

    .line 41
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->h(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->o:Z

    .line 42
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->t(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->p:Z

    .line 43
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->s(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->u:Z

    .line 44
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->u(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->q:Z

    .line 45
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->r(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->s:Z

    .line 46
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->a(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->t:Z

    .line 47
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->b(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->v:Z

    .line 48
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->i(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/If$i;->w:Z

    .line 49
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Sh$a;->e(Z)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/E9;->a:Lcom/yandex/metrica/impl/ob/F1;

    iget p1, p1, Lcom/yandex/metrica/impl/ob/If$i;->x:I

    .line 50
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/F1;->a(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Sh$a;->a(Ljava/lang/Boolean;)Lcom/yandex/metrica/impl/ob/Sh$a;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/yandex/metrica/impl/ob/Sh;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/Sh;-><init>(Lcom/yandex/metrica/impl/ob/Sh$a;)V

    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Sh;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/E9;->a(Lcom/yandex/metrica/impl/ob/Sh;)Lcom/yandex/metrica/impl/ob/If$i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$i;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/E9;->a(Lcom/yandex/metrica/impl/ob/If$i;)Lcom/yandex/metrica/impl/ob/Sh;

    move-result-object p1

    return-object p1
.end method
