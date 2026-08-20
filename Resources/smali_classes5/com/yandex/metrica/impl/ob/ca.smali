.class public Lcom/yandex/metrica/impl/ob/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/hl;",
        "Lcom/yandex/metrica/impl/ob/If$v;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ba;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ba;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ba;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/ca;-><init>(Lcom/yandex/metrica/impl/ob/ba;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ba;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/ba;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/If$v;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$v;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$v;-><init>()V

    .line 4
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->a:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->a:Z

    .line 5
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->b:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->b:Z

    .line 6
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->c:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->c:Z

    .line 7
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->d:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->d:Z

    .line 8
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->e:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->i:Z

    .line 9
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->f:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->j:Z

    .line 10
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->g:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->k:Z

    .line 11
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->h:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->l:Z

    .line 12
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->i:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->n:Z

    .line 13
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->j:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->o:Z

    .line 14
    iget v1, p1, Lcom/yandex/metrica/impl/ob/hl;->k:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->e:I

    .line 15
    iget v1, p1, Lcom/yandex/metrica/impl/ob/hl;->l:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->f:I

    .line 16
    iget v1, p1, Lcom/yandex/metrica/impl/ob/hl;->m:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->g:I

    .line 17
    iget v1, p1, Lcom/yandex/metrica/impl/ob/hl;->n:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->h:I

    .line 18
    iget v1, p1, Lcom/yandex/metrica/impl/ob/hl;->o:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->p:I

    .line 19
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/ba;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/hl;->p:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/ba;->a(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/If$y;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/If$v;->m:[Lcom/yandex/metrica/impl/ob/If$y;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/If$v;)Lcom/yandex/metrica/impl/ob/hl;
    .locals 21

    move-object/from16 v0, p1

    .line 20
    new-instance v18, Lcom/yandex/metrica/impl/ob/hl;

    move-object/from16 v1, v18

    iget-boolean v2, v0, Lcom/yandex/metrica/impl/ob/If$v;->a:Z

    iget-boolean v3, v0, Lcom/yandex/metrica/impl/ob/If$v;->b:Z

    iget-boolean v4, v0, Lcom/yandex/metrica/impl/ob/If$v;->c:Z

    iget-boolean v5, v0, Lcom/yandex/metrica/impl/ob/If$v;->d:Z

    iget-boolean v6, v0, Lcom/yandex/metrica/impl/ob/If$v;->i:Z

    iget-boolean v7, v0, Lcom/yandex/metrica/impl/ob/If$v;->j:Z

    iget-boolean v8, v0, Lcom/yandex/metrica/impl/ob/If$v;->k:Z

    iget-boolean v9, v0, Lcom/yandex/metrica/impl/ob/If$v;->l:Z

    iget-boolean v10, v0, Lcom/yandex/metrica/impl/ob/If$v;->n:Z

    iget-boolean v11, v0, Lcom/yandex/metrica/impl/ob/If$v;->o:Z

    iget v12, v0, Lcom/yandex/metrica/impl/ob/If$v;->e:I

    iget v13, v0, Lcom/yandex/metrica/impl/ob/If$v;->f:I

    iget v14, v0, Lcom/yandex/metrica/impl/ob/If$v;->g:I

    iget v15, v0, Lcom/yandex/metrica/impl/ob/If$v;->h:I

    move-object/from16 v19, v1

    iget v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->p:I

    move/from16 v16, v1

    move-object/from16 v1, p0

    move/from16 v20, v2

    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/ba;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/If$v;->m:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 36
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/ba;->a([Lcom/yandex/metrica/impl/ob/If$y;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct/range {v1 .. v17}, Lcom/yandex/metrica/impl/ob/hl;-><init>(ZZZZZZZZZZIIIIILjava/util/List;)V

    return-object v18
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/hl;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ca;->a(Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/If$v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$v;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ca;->a(Lcom/yandex/metrica/impl/ob/If$v;)Lcom/yandex/metrica/impl/ob/hl;

    move-result-object p1

    return-object p1
.end method
