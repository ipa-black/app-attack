.class public Lcom/yandex/metrica/impl/ob/K9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/mc;",
        "Lcom/yandex/metrica/impl/ob/If$k$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/G9;

.field private final b:Lcom/yandex/metrica/impl/ob/I9;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/G9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/G9;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/I9;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/I9;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/K9;-><init>(Lcom/yandex/metrica/impl/ob/G9;Lcom/yandex/metrica/impl/ob/I9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/G9;Lcom/yandex/metrica/impl/ob/I9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/K9;->a:Lcom/yandex/metrica/impl/ob/G9;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/K9;->b:Lcom/yandex/metrica/impl/ob/I9;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/mc;)Lcom/yandex/metrica/impl/ob/If$k$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$k$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$k$a;-><init>()V

    .line 4
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/mc;->a:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->a:J

    .line 5
    iget v1, p1, Lcom/yandex/metrica/impl/ob/mc;->b:F

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->b:F

    .line 6
    iget v1, p1, Lcom/yandex/metrica/impl/ob/mc;->c:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->c:I

    .line 7
    iget v1, p1, Lcom/yandex/metrica/impl/ob/mc;->d:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->d:I

    .line 8
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/mc;->e:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->e:J

    .line 9
    iget v1, p1, Lcom/yandex/metrica/impl/ob/mc;->f:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->f:I

    .line 10
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/mc;->g:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->g:Z

    .line 11
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/mc;->h:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->j:J

    .line 12
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/mc;->i:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->h:Z

    .line 13
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/mc;->j:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->i:Z

    .line 14
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/mc;->k:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->p:Z

    .line 15
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/mc;->l:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->q:Z

    .line 16
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/mc;->m:Lcom/yandex/metrica/impl/ob/Xb;

    if-eqz v1, :cond_0

    .line 17
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K9;->a:Lcom/yandex/metrica/impl/ob/G9;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/G9;->a(Lcom/yandex/metrica/impl/ob/Xb;)Lcom/yandex/metrica/impl/ob/If$k$a$a;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->k:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 19
    :cond_0
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/mc;->n:Lcom/yandex/metrica/impl/ob/Xb;

    if-eqz v1, :cond_1

    .line 20
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K9;->a:Lcom/yandex/metrica/impl/ob/G9;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/G9;->a(Lcom/yandex/metrica/impl/ob/Xb;)Lcom/yandex/metrica/impl/ob/If$k$a$a;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->l:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 22
    :cond_1
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/mc;->o:Lcom/yandex/metrica/impl/ob/Xb;

    if-eqz v1, :cond_2

    .line 23
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K9;->a:Lcom/yandex/metrica/impl/ob/G9;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/G9;->a(Lcom/yandex/metrica/impl/ob/Xb;)Lcom/yandex/metrica/impl/ob/If$k$a$a;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->m:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 25
    :cond_2
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/mc;->p:Lcom/yandex/metrica/impl/ob/Xb;

    if-eqz v1, :cond_3

    .line 26
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K9;->a:Lcom/yandex/metrica/impl/ob/G9;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/G9;->a(Lcom/yandex/metrica/impl/ob/Xb;)Lcom/yandex/metrica/impl/ob/If$k$a$a;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->n:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    .line 28
    :cond_3
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/mc;->q:Lcom/yandex/metrica/impl/ob/cc;

    if-eqz p1, :cond_4

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K9;->b:Lcom/yandex/metrica/impl/ob/I9;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/I9;->a(Lcom/yandex/metrica/impl/ob/cc;)Lcom/yandex/metrica/impl/ob/If$k$a$b;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/If$k$a;->o:Lcom/yandex/metrica/impl/ob/If$k$a$b;

    :cond_4
    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/If$k$a;)Lcom/yandex/metrica/impl/ob/mc;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 30
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->k:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 31
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/K9;->a:Lcom/yandex/metrica/impl/ob/G9;

    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ob/G9;->a(Lcom/yandex/metrica/impl/ob/If$k$a$a;)Lcom/yandex/metrica/impl/ob/Xb;

    move-result-object v2

    move-object/from16 v20, v2

    goto :goto_0

    :cond_0
    move-object/from16 v20, v3

    .line 33
    :goto_0
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->l:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    if-eqz v2, :cond_1

    .line 34
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/K9;->a:Lcom/yandex/metrica/impl/ob/G9;

    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ob/G9;->a(Lcom/yandex/metrica/impl/ob/If$k$a$a;)Lcom/yandex/metrica/impl/ob/Xb;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_1

    :cond_1
    move-object/from16 v21, v3

    .line 36
    :goto_1
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->m:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    if-eqz v2, :cond_2

    .line 37
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/K9;->a:Lcom/yandex/metrica/impl/ob/G9;

    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ob/G9;->a(Lcom/yandex/metrica/impl/ob/If$k$a$a;)Lcom/yandex/metrica/impl/ob/Xb;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_2

    :cond_2
    move-object/from16 v22, v3

    .line 39
    :goto_2
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->n:Lcom/yandex/metrica/impl/ob/If$k$a$a;

    if-eqz v2, :cond_3

    .line 40
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/K9;->a:Lcom/yandex/metrica/impl/ob/G9;

    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ob/G9;->a(Lcom/yandex/metrica/impl/ob/If$k$a$a;)Lcom/yandex/metrica/impl/ob/Xb;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_3

    :cond_3
    move-object/from16 v23, v3

    .line 42
    :goto_3
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->o:Lcom/yandex/metrica/impl/ob/If$k$a$b;

    if-eqz v2, :cond_4

    .line 43
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/K9;->b:Lcom/yandex/metrica/impl/ob/I9;

    invoke-virtual {v3, v2}, Lcom/yandex/metrica/impl/ob/I9;->a(Lcom/yandex/metrica/impl/ob/If$k$a$b;)Lcom/yandex/metrica/impl/ob/cc;

    move-result-object v3

    :cond_4
    move-object/from16 v24, v3

    .line 45
    new-instance v2, Lcom/yandex/metrica/impl/ob/mc;

    move-object v4, v2

    iget-wide v5, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->a:J

    iget v7, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->b:F

    iget v8, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->c:I

    iget v9, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->d:I

    iget-wide v10, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->e:J

    iget v12, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->f:I

    iget-boolean v13, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->g:Z

    iget-wide v14, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->j:J

    iget-boolean v3, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->h:Z

    move/from16 v16, v3

    iget-boolean v3, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->i:Z

    move/from16 v17, v3

    iget-boolean v3, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->p:Z

    move/from16 v18, v3

    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/If$k$a;->q:Z

    move/from16 v19, v1

    invoke-direct/range {v4 .. v24}, Lcom/yandex/metrica/impl/ob/mc;-><init>(JFIIJIZJZZZZLcom/yandex/metrica/impl/ob/Xb;Lcom/yandex/metrica/impl/ob/Xb;Lcom/yandex/metrica/impl/ob/Xb;Lcom/yandex/metrica/impl/ob/Xb;Lcom/yandex/metrica/impl/ob/cc;)V

    return-object v2
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/mc;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/K9;->a(Lcom/yandex/metrica/impl/ob/mc;)Lcom/yandex/metrica/impl/ob/If$k$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$k$a;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/K9;->a(Lcom/yandex/metrica/impl/ob/If$k$a;)Lcom/yandex/metrica/impl/ob/mc;

    move-result-object p1

    return-object p1
.end method
