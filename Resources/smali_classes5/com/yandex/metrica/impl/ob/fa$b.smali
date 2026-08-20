.class public Lcom/yandex/metrica/impl/ob/fa$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/fa$b$k;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/yandex/metrica/impl/ob/fa<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fa<",
            "Lcom/yandex/metrica/impl/ob/qi;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/impl/ob/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fa<",
            "Lcom/yandex/metrica/impl/ob/Jf$e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fa<",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Bd;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/metrica/impl/ob/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fa<",
            "Lcom/yandex/metrica/impl/ob/td;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/metrica/impl/ob/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fa<",
            "Lcom/yandex/metrica/impl/ob/eh;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/yandex/metrica/impl/ob/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fa<",
            "Lcom/yandex/metrica/impl/ob/ee;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final h:Lcom/yandex/metrica/impl/ob/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fa<",
            "Lcom/yandex/metrica/impl/ob/Z1;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final i:Lcom/yandex/metrica/impl/ob/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fa<",
            "Lcom/yandex/metrica/impl/ob/Ud;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/yandex/metrica/impl/ob/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fa<",
            "Lcom/yandex/metrica/impl/ob/X2;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/yandex/metrica/impl/ob/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fa<",
            "Lcom/yandex/metrica/impl/ob/v3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 12

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fa$b;->a:Ljava/util/HashMap;

    .line 4
    new-instance v1, Lcom/yandex/metrica/impl/ob/fa$b$b;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/fa$b$b;-><init>(Lcom/yandex/metrica/impl/ob/fa$b;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/fa$b;->b:Lcom/yandex/metrica/impl/ob/fa;

    .line 33
    new-instance v2, Lcom/yandex/metrica/impl/ob/fa$b$c;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/fa$b$c;-><init>(Lcom/yandex/metrica/impl/ob/fa$b;)V

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/fa$b;->c:Lcom/yandex/metrica/impl/ob/fa;

    .line 63
    new-instance v3, Lcom/yandex/metrica/impl/ob/fa$b$d;

    invoke-direct {v3, p0}, Lcom/yandex/metrica/impl/ob/fa$b$d;-><init>(Lcom/yandex/metrica/impl/ob/fa$b;)V

    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/fa$b;->d:Lcom/yandex/metrica/impl/ob/fa;

    .line 93
    new-instance v4, Lcom/yandex/metrica/impl/ob/fa$b$e;

    invoke-direct {v4, p0}, Lcom/yandex/metrica/impl/ob/fa$b$e;-><init>(Lcom/yandex/metrica/impl/ob/fa$b;)V

    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/fa$b;->e:Lcom/yandex/metrica/impl/ob/fa;

    .line 123
    new-instance v5, Lcom/yandex/metrica/impl/ob/fa$b$f;

    invoke-direct {v5, p0}, Lcom/yandex/metrica/impl/ob/fa$b$f;-><init>(Lcom/yandex/metrica/impl/ob/fa$b;)V

    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/fa$b;->f:Lcom/yandex/metrica/impl/ob/fa;

    .line 153
    new-instance v6, Lcom/yandex/metrica/impl/ob/fa$b$g;

    invoke-direct {v6, p0}, Lcom/yandex/metrica/impl/ob/fa$b$g;-><init>(Lcom/yandex/metrica/impl/ob/fa$b;)V

    iput-object v6, p0, Lcom/yandex/metrica/impl/ob/fa$b;->g:Lcom/yandex/metrica/impl/ob/fa;

    .line 184
    new-instance v7, Lcom/yandex/metrica/impl/ob/fa$b$h;

    invoke-direct {v7, p0}, Lcom/yandex/metrica/impl/ob/fa$b$h;-><init>(Lcom/yandex/metrica/impl/ob/fa$b;)V

    iput-object v7, p0, Lcom/yandex/metrica/impl/ob/fa$b;->h:Lcom/yandex/metrica/impl/ob/fa;

    .line 214
    new-instance v8, Lcom/yandex/metrica/impl/ob/fa$b$i;

    invoke-direct {v8, p0}, Lcom/yandex/metrica/impl/ob/fa$b$i;-><init>(Lcom/yandex/metrica/impl/ob/fa$b;)V

    iput-object v8, p0, Lcom/yandex/metrica/impl/ob/fa$b;->i:Lcom/yandex/metrica/impl/ob/fa;

    .line 243
    new-instance v9, Lcom/yandex/metrica/impl/ob/fa$b$j;

    invoke-direct {v9, p0}, Lcom/yandex/metrica/impl/ob/fa$b$j;-><init>(Lcom/yandex/metrica/impl/ob/fa$b;)V

    iput-object v9, p0, Lcom/yandex/metrica/impl/ob/fa$b;->j:Lcom/yandex/metrica/impl/ob/fa;

    .line 272
    new-instance v10, Lcom/yandex/metrica/impl/ob/fa$b$a;

    invoke-direct {v10, p0}, Lcom/yandex/metrica/impl/ob/fa$b$a;-><init>(Lcom/yandex/metrica/impl/ob/fa$b;)V

    iput-object v10, p0, Lcom/yandex/metrica/impl/ob/fa$b;->k:Lcom/yandex/metrica/impl/ob/fa;

    .line 302
    const-class v11, Lcom/yandex/metrica/impl/ob/qi;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-class v1, Lcom/yandex/metrica/impl/ob/Jf$e;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-class v1, Lcom/yandex/metrica/impl/ob/Bd;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-class v1, Lcom/yandex/metrica/impl/ob/td;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-class v1, Lcom/yandex/metrica/impl/ob/eh;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-class v1, Lcom/yandex/metrica/impl/ob/ee;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-class v1, Lcom/yandex/metrica/impl/ob/Z1;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-class v1, Lcom/yandex/metrica/impl/ob/Ud;

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-class v1, Lcom/yandex/metrica/impl/ob/X2;

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-class v1, Lcom/yandex/metrica/impl/ob/v3;

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/fa$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fa$b;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/yandex/metrica/impl/ob/fa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/yandex/metrica/impl/ob/fa<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/fa$b$k;->a:Lcom/yandex/metrica/impl/ob/fa$b;

    .line 2
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/fa$b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/fa;

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lcom/yandex/metrica/impl/ob/fa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/yandex/metrica/impl/ob/fa<",
            "Ljava/util/Collection<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/fa$b$k;->a:Lcom/yandex/metrica/impl/ob/fa$b;

    .line 2
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/fa$b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/fa;

    return-object p0
.end method
