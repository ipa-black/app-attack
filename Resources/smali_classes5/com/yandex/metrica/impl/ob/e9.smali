.class public Lcom/yandex/metrica/impl/ob/e9;
.super Lcom/yandex/metrica/impl/ob/d9;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ph;
.implements Lcom/yandex/metrica/impl/ob/f8;


# static fields
.field static final c:Lcom/yandex/metrica/impl/ob/Rd;

.field static final d:Lcom/yandex/metrica/impl/ob/Rd;

.field static final e:Lcom/yandex/metrica/impl/ob/Rd;

.field static final f:Lcom/yandex/metrica/impl/ob/Rd;

.field static final g:Lcom/yandex/metrica/impl/ob/Rd;

.field static final h:Lcom/yandex/metrica/impl/ob/Rd;

.field static final i:Lcom/yandex/metrica/impl/ob/Rd;

.field static final j:Lcom/yandex/metrica/impl/ob/Rd;

.field static final k:Lcom/yandex/metrica/impl/ob/Rd;

.field static final l:Lcom/yandex/metrica/impl/ob/Rd;

.field static final m:Lcom/yandex/metrica/impl/ob/Rd;

.field private static final n:Lcom/yandex/metrica/impl/ob/Rd;

.field static final o:Lcom/yandex/metrica/impl/ob/Rd;

.field static final p:Lcom/yandex/metrica/impl/ob/Rd;

.field static final q:Lcom/yandex/metrica/impl/ob/Rd;

.field static final r:Lcom/yandex/metrica/impl/ob/Rd;

.field static final s:Lcom/yandex/metrica/impl/ob/Rd;

.field static final t:Lcom/yandex/metrica/impl/ob/Rd;

.field static final u:Lcom/yandex/metrica/impl/ob/Rd;

.field static final v:Lcom/yandex/metrica/impl/ob/Rd;

.field static final w:Lcom/yandex/metrica/impl/ob/Rd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 2
    const-string v1, "LOCATION_TRACKING_ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->c:Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "PREF_KEY_OFFSET"

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->d:Lcom/yandex/metrica/impl/ob/Rd;

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "UNCHECKED_TIME"

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->e:Lcom/yandex/metrica/impl/ob/Rd;

    .line 10
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "STATISTICS_RESTRICTED_IN_MAIN"

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->f:Lcom/yandex/metrica/impl/ob/Rd;

    .line 13
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "SDKFCE"

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "FST"

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "LSST"

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "FSDKFCO"

    .line 20
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "SRSDKFC"

    .line 22
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "LSDKFCAT"

    .line 24
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "LAST_IDENTITY_LIGHT_SEND_TIME"

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->g:Lcom/yandex/metrica/impl/ob/Rd;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "NEXT_REPORT_SEND_ATTEMPT_NUMBER"

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->h:Lcom/yandex/metrica/impl/ob/Rd;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "NEXT_LOCATION_SEND_ATTEMPT_NUMBER"

    .line 33
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->i:Lcom/yandex/metrica/impl/ob/Rd;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "NEXT_STARTUP_SEND_ATTEMPT_NUMBER"

    .line 37
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->j:Lcom/yandex/metrica/impl/ob/Rd;

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "LAST_REPORT_SEND_ATTEMPT_TIME"

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->k:Lcom/yandex/metrica/impl/ob/Rd;

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "LAST_LOCATION_SEND_ATTEMPT_TIME"

    .line 44
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->l:Lcom/yandex/metrica/impl/ob/Rd;

    .line 47
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "LAST_STARTUP_SEND_ATTEMPT_TIME"

    .line 48
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->m:Lcom/yandex/metrica/impl/ob/Rd;

    .line 52
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "LAST_MIGRATION_VERSION"

    .line 53
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->n:Lcom/yandex/metrica/impl/ob/Rd;

    .line 55
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "LAST_WIFI_SCANNING_ATTEMPT_TIME"

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->o:Lcom/yandex/metrica/impl/ob/Rd;

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "LAST_LBS_SCANNING_ATTEMPT_TIME"

    .line 60
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->p:Lcom/yandex/metrica/impl/ob/Rd;

    .line 63
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "LAST_GPS_SCANNING_ATTEMPT_TIME"

    .line 64
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->q:Lcom/yandex/metrica/impl/ob/Rd;

    .line 67
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "LAST_FUSED_SCANNING_ATTEMPT_TIME"

    .line 68
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->r:Lcom/yandex/metrica/impl/ob/Rd;

    .line 72
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "SATELLITE_PRELOAD_INFO_CHECKED"

    .line 73
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->s:Lcom/yandex/metrica/impl/ob/Rd;

    .line 76
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "SATELLITE_CLIDS_CHECKED"

    .line 77
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->t:Lcom/yandex/metrica/impl/ob/Rd;

    .line 81
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "CERTIFICATE_REQUEST_ETAG"

    .line 82
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->u:Lcom/yandex/metrica/impl/ob/Rd;

    .line 84
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "CERTIFICATE_REQUEST_NEXT_ATTEMPT_TIME"

    .line 85
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->v:Lcom/yandex/metrica/impl/ob/Rd;

    .line 88
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    const-string v1, "VITAL_DATA"

    .line 89
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sput-object v0, Lcom/yandex/metrica/impl/ob/e9;->w:Lcom/yandex/metrica/impl/ob/Rd;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/S7;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/d9;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/qd;)Lcom/yandex/metrica/impl/ob/Rd;
    .locals 1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lcom/yandex/metrica/impl/ob/e9;->m:Lcom/yandex/metrica/impl/ob/Rd;

    return-object p1

    .line 20
    :cond_1
    sget-object p1, Lcom/yandex/metrica/impl/ob/e9;->l:Lcom/yandex/metrica/impl/ob/Rd;

    return-object p1

    .line 21
    :cond_2
    sget-object p1, Lcom/yandex/metrica/impl/ob/e9;->k:Lcom/yandex/metrica/impl/ob/Rd;

    return-object p1
.end method

.method private b(Lcom/yandex/metrica/impl/ob/qd;)Lcom/yandex/metrica/impl/ob/Rd;
    .locals 1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lcom/yandex/metrica/impl/ob/e9;->j:Lcom/yandex/metrica/impl/ob/Rd;

    return-object p1

    .line 18
    :cond_1
    sget-object p1, Lcom/yandex/metrica/impl/ob/e9;->i:Lcom/yandex/metrica/impl/ob/Rd;

    return-object p1

    .line 19
    :cond_2
    sget-object p1, Lcom/yandex/metrica/impl/ob/e9;->h:Lcom/yandex/metrica/impl/ob/Rd;

    return-object p1
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->n:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/qd;I)I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/e9;->b(Lcom/yandex/metrica/impl/ob/qd;)Lcom/yandex/metrica/impl/ob/Rd;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;I)I

    move-result p2

    :goto_0
    return p2
.end method

.method public a()J
    .locals 3

    .line 11
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->v:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/qd;J)J
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/e9;->a(Lcom/yandex/metrica/impl/ob/qd;)Lcom/yandex/metrica/impl/ob/Rd;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;J)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/e9;
    .locals 3

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LAST_SOCKET_REPORT_TIMES_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/e9;

    return-object p1
.end method

.method public a(J)Lcom/yandex/metrica/impl/ob/ph;
    .locals 1

    .line 12
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->v:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ph;

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 13
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->w:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    return-void
.end method

.method public a(Z)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->e:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b(I)J
    .locals 3

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->d:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)J
    .locals 1

    .line 9
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->r:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(Lcom/yandex/metrica/impl/ob/qd;I)Lcom/yandex/metrica/impl/ob/e9;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/e9;->b(Lcom/yandex/metrica/impl/ob/qd;)Lcom/yandex/metrica/impl/ob/Rd;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/e9;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public b(Lcom/yandex/metrica/impl/ob/qd;J)Lcom/yandex/metrica/impl/ob/e9;
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/e9;->a(Lcom/yandex/metrica/impl/ob/qd;)Lcom/yandex/metrica/impl/ob/Rd;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/e9;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public b(Z)Lcom/yandex/metrica/impl/ob/e9;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->f:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/e9;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ph;
    .locals 1

    .line 11
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->u:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ph;

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 10
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->u:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(J)J
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->q:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(Z)Lcom/yandex/metrica/impl/ob/e9;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->e:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/e9;

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 3
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->w:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(J)J
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->g:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->c:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    return-void
.end method

.method public e(J)J
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->p:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public f(J)J
    .locals 1

    .line 3
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->o:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public f()Ljava/lang/Boolean;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->f:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/d9;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public g(J)Lcom/yandex/metrica/impl/ob/e9;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->r:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/e9;

    return-object p1
.end method

.method public g()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->c:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Lcom/yandex/metrica/impl/ob/e9;
    .locals 2

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->t:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/e9;

    return-object v0
.end method

.method public h(J)Lcom/yandex/metrica/impl/ob/e9;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->q:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/e9;

    return-object p1
.end method

.method public i()Lcom/yandex/metrica/impl/ob/e9;
    .locals 2

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->s:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/e9;

    return-object v0
.end method

.method public i(J)Lcom/yandex/metrica/impl/ob/e9;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->g:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/e9;

    return-object p1
.end method

.method public j()Lcom/yandex/metrica/impl/ob/e9;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->n:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/e9;

    return-object v0
.end method

.method public j(J)Lcom/yandex/metrica/impl/ob/e9;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->p:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/e9;

    return-object p1
.end method

.method public k(J)Lcom/yandex/metrica/impl/ob/e9;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->o:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/e9;

    return-object p1
.end method

.method public k()Z
    .locals 2

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->s:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l(J)Lcom/yandex/metrica/impl/ob/e9;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->d:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/d9;->b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/d9;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/e9;

    return-object p1
.end method

.method public l()Z
    .locals 2

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/e9;->t:Lcom/yandex/metrica/impl/ob/Rd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
