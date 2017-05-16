.class Landroid/media/midi/IMidiDeviceOpenCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMidiDeviceOpenCallback.java"

# interfaces
.implements Landroid/media/midi/IMidiDeviceOpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiDeviceOpenCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/media/midi/IMidiDeviceOpenCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 62
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/media/midi/IMidiDeviceOpenCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "android.media.midi.IMidiDeviceOpenCallback"

    return-object v0
.end method

.method public onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 78
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.midi.IMidiDeviceOpenCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 79
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 80
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 81
    iget-object v1, p0, Landroid/media/midi/IMidiDeviceOpenCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 74
    return-void

    .line 83
    :catchall_0
    move-exception v1

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 83
    throw v1
.end method