.class final Lcom/google/android/gms/internal/ads/zzasx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzayj;

.field public final zzb:Ljava/lang/Object;

.field public final zzc:I

.field public final zzd:[Lcom/google/android/gms/internal/ads/zzayv;

.field public final zze:[Z

.field public final zzf:J

.field public zzg:I

.field public zzh:J

.field public zzi:Z

.field public zzj:Z

.field public zzk:Z

.field public zzl:Lcom/google/android/gms/internal/ads/zzasx;

.field public zzm:Lcom/google/android/gms/internal/ads/zzazp;

.field private final zzn:[Lcom/google/android/gms/internal/ads/zzati;

.field private final zzo:[Lcom/google/android/gms/internal/ads/zzatj;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzazo;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzayl;

.field private zzr:Lcom/google/android/gms/internal/ads/zzazp;

.field private final zzs:Lcom/google/android/gms/internal/ads/zzcku;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzati;[Lcom/google/android/gms/internal/ads/zzatj;JLcom/google/android/gms/internal/ads/zzazo;Lcom/google/android/gms/internal/ads/zzcku;Lcom/google/android/gms/internal/ads/zzayl;Ljava/lang/Object;IIZJ[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzn:[Lcom/google/android/gms/internal/ads/zzati;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzo:[Lcom/google/android/gms/internal/ads/zzatj;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzf:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzp:Lcom/google/android/gms/internal/ads/zzazo;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzs:Lcom/google/android/gms/internal/ads/zzcku;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzq:Lcom/google/android/gms/internal/ads/zzayl;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzb:Ljava/lang/Object;

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzc:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzg:I

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzi:Z

    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzh:J

    const/4 p1, 0x2

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzayv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzd:[Lcom/google/android/gms/internal/ads/zzayv;

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasx;->zze:[Z

    .line 1
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzcku;->zzl()Lcom/google/android/gms/internal/ads/zzazw;

    move-result-object p1

    invoke-interface {p7, p10, p1}, Lcom/google/android/gms/internal/ads/zzayl;->zze(ILcom/google/android/gms/internal/ads/zzazw;)Lcom/google/android/gms/internal/ads/zzayj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasx;->zza:Lcom/google/android/gms/internal/ads/zzayj;

    return-void
.end method


# virtual methods
.method public final zza(JZ)J
    .locals 1

    const/4 p3, 0x2

    .line 1
    new-array p3, p3, [Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzasx;->zzb(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzb(JZ[Z)J
    .locals 13

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzasx;->zzm:Lcom/google/android/gms/internal/ads/zzazp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzazp;->zzb:Lcom/google/android/gms/internal/ads/zzazm;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzasx;->zze:[Z

    if-nez p3, :cond_0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzasx;->zzm:Lcom/google/android/gms/internal/ads/zzazp;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzasx;->zzr:Lcom/google/android/gms/internal/ads/zzazp;

    .line 2
    invoke-virtual {v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Lcom/google/android/gms/internal/ads/zzazp;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzasx;->zza:Lcom/google/android/gms/internal/ads/zzayj;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazm;->zzb()[Lcom/google/android/gms/internal/ads/zzaze;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzasx;->zze:[Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzasx;->zzd:[Lcom/google/android/gms/internal/ads/zzayv;

    move-object/from16 v10, p4

    move-wide v11, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzayj;->zzB([Lcom/google/android/gms/internal/ads/zzaze;[Z[Lcom/google/android/gms/internal/ads/zzayv;[ZJ)J

    move-result-wide v6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzasx;->zzm:Lcom/google/android/gms/internal/ads/zzazp;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzasx;->zzr:Lcom/google/android/gms/internal/ads/zzazp;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzasx;->zzk:Z

    move v3, v2

    :goto_2
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzasx;->zzd:[Lcom/google/android/gms/internal/ads/zzayv;

    if-ge v3, v4, :cond_5

    aget-object v8, v8, v3

    if-eqz v8, :cond_3

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzazm;->zza(I)Lcom/google/android/gms/internal/ads/zzaze;

    move-result-object v8

    if-eqz v8, :cond_2

    move v8, v5

    goto :goto_3

    :cond_2
    move v8, v2

    :goto_3
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbaj;->zze(Z)V

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzasx;->zzk:Z

    goto :goto_5

    .line 5
    :cond_3
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzazm;->zza(I)Lcom/google/android/gms/internal/ads/zzaze;

    move-result-object v8

    if-nez v8, :cond_4

    move v8, v5

    goto :goto_4

    :cond_4
    move v8, v2

    :goto_4
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbaj;->zze(Z)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzasx;->zzs:Lcom/google/android/gms/internal/ads/zzcku;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzasx;->zzn:[Lcom/google/android/gms/internal/ads/zzati;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzasx;->zzm:Lcom/google/android/gms/internal/ads/zzazp;

    .line 6
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzazp;->zza:Lcom/google/android/gms/internal/ads/zzaza;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzcku;->zzd([Lcom/google/android/gms/internal/ads/zzati;Lcom/google/android/gms/internal/ads/zzaza;Lcom/google/android/gms/internal/ads/zzazm;)V

    return-wide v6
.end method

.method public final zzc()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzq:Lcom/google/android/gms/internal/ads/zzayl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasx;->zza:Lcom/google/android/gms/internal/ads/zzayj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzayl;->zzc(Lcom/google/android/gms/internal/ads/zzayj;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zzd()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzj:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzk:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasx;->zza:Lcom/google/android/gms/internal/ads/zzayj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayj;->zzg()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final zze()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzasp;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzp:Lcom/google/android/gms/internal/ads/zzazo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzo:[Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasx;->zza:Lcom/google/android/gms/internal/ads/zzayj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzayj;->zzn()Lcom/google/android/gms/internal/ads/zzaza;

    move-result-object v2

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzazo;->zzc([Lcom/google/android/gms/internal/ads/zzatj;Lcom/google/android/gms/internal/ads/zzaza;)Lcom/google/android/gms/internal/ads/zzazp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzr:Lcom/google/android/gms/internal/ads/zzazp;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 3
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Lcom/google/android/gms/internal/ads/zzazp;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasx;->zzm:Lcom/google/android/gms/internal/ads/zzazp;

    const/4 v0, 0x1

    return v0
.end method
