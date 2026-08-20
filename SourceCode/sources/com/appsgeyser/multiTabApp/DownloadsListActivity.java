package com.appsgeyser.multiTabApp;

import android.app.DownloadManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.MimeTypeMap;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.FileProvider;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.appsgeyser.multiTabApp.browser.DownloadsItem;
import com.appsgeyser.multiTabApp.browser.DownloadsItemAdapter;
import com.appsgeyser.multiTabApp.storage.DatabaseOpenHelper;
import com.appsgeyser.multiTabApp.utils.ThemeUtils;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2.dex */
public class DownloadsListActivity extends AppCompatActivity {
    public static final int DOWNLOAD_COMPLETE = 101;
    public static final int DOWNLOAD_START = 100;
    private DatabaseOpenHelper _dbHelper;
    DownloadManager downloadManager;
    private DownloadsItemAdapter downloadsItemAdapter;
    private List<DownloadsItem> itemList;
    private Timer myTimer;
    @BindView(com.w_19998775.R.id.downloads_toolbar)
    Toolbar toolbar;
    public static final String DOWNLOAD_LIST_MSG = DownloadsListActivity.class.toString();
    private static final Object lock = new Object();
    private final int IDM_DELETE = 1;
    Comparator<DownloadsItem> comparator = new Comparator<DownloadsItem>() { // from class: com.appsgeyser.multiTabApp.DownloadsListActivity.2
        @Override // java.util.Comparator
        public int compare(DownloadsItem downloadsItem, DownloadsItem downloadsItem2) {
            int compareTo;
            if (downloadsItem.getStatus() == DownloadsItem.Status.InProgress && downloadsItem2.getStatus() == DownloadsItem.Status.InProgress) {
                compareTo = Long.valueOf(downloadsItem.getId_d()).compareTo(Long.valueOf(downloadsItem2.getId_d()));
            } else if (downloadsItem.getStatus() == DownloadsItem.Status.InProgress) {
                return -1;
            } else {
                if (downloadsItem2.getStatus() == DownloadsItem.Status.InProgress) {
                    return 1;
                }
                compareTo = Long.valueOf(downloadsItem.getId_d()).compareTo(Long.valueOf(downloadsItem2.getId_d()));
            }
            return compareTo * (-1);
        }
    };
    BroadcastReceiver activityReceiver = new BroadcastReceiver() { // from class: com.appsgeyser.multiTabApp.DownloadsListActivity.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int intExtra = intent.getIntExtra(SessionDescription.ATTR_TYPE, 0);
            if (intExtra == 100) {
                synchronized (DownloadsListActivity.lock) {
                    if (DownloadsListActivity.this.myTimer == null) {
                        DownloadsListActivity.this.myTimer = new Timer();
                        DownloadsListActivity.this.myTimer.schedule(new ProgressTask(), 0L, 100L);
                    }
                    DownloadsListActivity.this.itemList.add((DownloadsItem) intent.getSerializableExtra("item"));
                    Collections.sort(DownloadsListActivity.this.itemList, DownloadsListActivity.this.comparator);
                    DownloadsListActivity.this.downloadsItemAdapter.notifyDataSetChanged();
                }
            }
            if (intExtra == 101) {
                synchronized (DownloadsListActivity.lock) {
                    DownloadsListActivity.this.itemList.clear();
                    DownloadsListActivity.this.itemList.addAll(DownloadsListActivity.this.getItemList());
                    DownloadsListActivity.this.downloadsItemAdapter.notifyDataSetChanged();
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ThemeUtils.setCurrentThemeWithNoActionBar(this);
        setContentView(com.w_19998775.R.layout.activity_downloads_list);
        ButterKnife.bind(this);
        ListView listView = (ListView) findViewById(com.w_19998775.R.id.downloadsList);
        TextView textView = new TextView(this);
        textView.setLayoutParams(new LinearLayoutCompat.LayoutParams(-1, -1));
        textView.setGravity(17);
        textView.setText(getResources().getString(com.w_19998775.R.string.text_list_is_empty));
        ((ViewGroup) listView.getParent()).addView(textView);
        listView.setEmptyView(textView);
        this.toolbar.setTitle(com.w_19998775.R.string.downloads_list);
        setSupportActionBar(this.toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setHomeButtonEnabled(true);
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        this.downloadsItemAdapter = new DownloadsItemAdapter(this, com.w_19998775.R.layout.downloads_item, this.itemList);
        registerForContextMenu(listView);
        this.downloadManager = (DownloadManager) getSystemService("download");
        this.itemList = getItemList();
        IntentFilter intentFilter = new IntentFilter(DOWNLOAD_LIST_MSG);
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(this.activityReceiver, intentFilter, 2);
        } else {
            registerReceiver(this.activityReceiver, intentFilter);
        }
        this.downloadsItemAdapter = new DownloadsItemAdapter(this, com.w_19998775.R.layout.downloads_item, this.itemList);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.appsgeyser.multiTabApp.DownloadsListActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                MimeTypeMap singleton = MimeTypeMap.getSingleton();
                Intent intent = new Intent("android.intent.action.VIEW");
                DownloadsListActivity downloadsListActivity = DownloadsListActivity.this;
                String mimeTypeFromExtension = singleton.getMimeTypeFromExtension(downloadsListActivity.fileExt(((DownloadsItem) downloadsListActivity.itemList.get(i)).getFile_path()));
                intent.setFlags(268435456);
                Uri uriForFile = FileProvider.getUriForFile(DownloadsListActivity.this, DownloadsListActivity.this.getApplicationContext().getPackageName() + ".fileprovider", new File(((DownloadsItem) DownloadsListActivity.this.itemList.get(i)).getFile_path()));
                intent.addFlags(1073741824);
                intent.addFlags(1);
                intent.setDataAndType(uriForFile, mimeTypeFromExtension);
                try {
                    DownloadsListActivity.this.startActivity(intent);
                } catch (ActivityNotFoundException unused) {
                    Toast.makeText(DownloadsListActivity.this, (int) com.w_19998775.R.string.no_handler, 1).show();
                }
            }
        });
        listView.setAdapter((ListAdapter) this.downloadsItemAdapter);
        Timer timer = new Timer();
        this.myTimer = timer;
        timer.schedule(new ProgressTask(), 0L, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String fileExt(String str) {
        if (str != null) {
            if (str.contains("?")) {
                str = str.substring(0, str.indexOf("?"));
            }
            if (str.lastIndexOf(".") == -1) {
                return null;
            }
            String substring = str.substring(str.lastIndexOf(".") + 1);
            if (substring.contains("%")) {
                substring = substring.substring(0, substring.indexOf("%"));
            }
            if (substring.contains("/")) {
                substring = substring.substring(0, substring.indexOf("/"));
            }
            return substring.toLowerCase();
        }
        return null;
    }

    /* loaded from: classes2.dex */
    private class ProgressTask extends TimerTask {
        private ProgressTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if ((DownloadsListActivity.this.itemList.size() == 0 || !((DownloadsItem) DownloadsListActivity.this.itemList.get(0)).getStatus().equals(DownloadsItem.Status.InProgress)) && DownloadsListActivity.this.myTimer != null) {
                DownloadsListActivity.this.myTimer.cancel();
                DownloadsListActivity.this.myTimer = null;
                return;
            }
            synchronized (DownloadsListActivity.lock) {
                for (DownloadsItem downloadsItem : DownloadsListActivity.this.itemList) {
                    if (downloadsItem.getStatus() != DownloadsItem.Status.InProgress) {
                        break;
                    }
                    DownloadManager.Query query = new DownloadManager.Query();
                    query.setFilterById(downloadsItem.getId_d());
                    Cursor query2 = DownloadsListActivity.this.downloadManager.query(query);
                    if (query2.moveToFirst()) {
                        query2.moveToFirst();
                        int i = query2.getInt(query2.getColumnIndex("bytes_so_far"));
                        int i2 = query2.getInt(query2.getColumnIndex("total_size"));
                        query2.close();
                        downloadsItem.setProgress(Integer.valueOf((i * 100) / i2));
                    } else {
                        downloadsItem.setStatus(DownloadsItem.Status.Fail);
                        downloadsItem.setDescription(DownloadsItem.Status.Fail.toString());
                        downloadsItem.setDate(Long.valueOf(System.currentTimeMillis()));
                        downloadsItem.setFile_path(null);
                    }
                    DownloadsListActivity.this.runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.DownloadsListActivity.ProgressTask.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DownloadsListActivity.this.downloadsItemAdapter.notifyDataSetChanged();
                        }
                    });
                    query2.close();
                }
            }
        }
    }

    public void delete(int i) {
        long id_d = this.itemList.get(i).getId_d();
        SQLiteDatabase writableDatabase = this._dbHelper.getWritableDatabase();
        writableDatabase.delete("downloadsList", "id_d = " + id_d, null);
        writableDatabase.close();
        this.itemList.remove(i);
        this.downloadsItemAdapter.notifyDataSetChanged();
    }

    public void delete() {
        this.itemList.clear();
        SQLiteDatabase writableDatabase = this._dbHelper.getWritableDatabase();
        writableDatabase.delete("downloadsList", null, null);
        writableDatabase.close();
    }

    public List<DownloadsItem> getItemList() {
        this._dbHelper = new DatabaseOpenHelper(this);
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase writableDatabase = this._dbHelper.getWritableDatabase();
        Cursor query = writableDatabase.query("downloadsList", null, null, null, null, null, null);
        if (query.moveToFirst()) {
            int columnIndex = query.getColumnIndex("name");
            int columnIndex2 = query.getColumnIndex("description");
            int columnIndex3 = query.getColumnIndex("id_d");
            int columnIndex4 = query.getColumnIndex("link_d");
            int columnIndex5 = query.getColumnIndex("file_path");
            int columnIndex6 = query.getColumnIndex("date");
            do {
                DownloadsItem downloadsItem = new DownloadsItem(query.getString(columnIndex));
                downloadsItem.setDescription(query.getString(columnIndex2));
                downloadsItem.setFile_path(query.getString(columnIndex5));
                downloadsItem.setId_d(query.getLong(columnIndex3));
                downloadsItem.setLink_d(query.getString(columnIndex4));
                downloadsItem.setDate(Long.valueOf(query.getLong(columnIndex6)));
                DownloadManager.Query query2 = new DownloadManager.Query();
                query2.setFilterById(downloadsItem.getId_d());
                Cursor query3 = this.downloadManager.query(query2);
                if (query3.moveToFirst()) {
                    int columnIndex7 = query3.getColumnIndex("status");
                    int columnIndex8 = query3.getColumnIndex("last_modified_timestamp");
                    int i = query3.getInt(columnIndex7);
                    int i2 = query3.getInt(query3.getColumnIndex("total_size"));
                    if (i == 2) {
                        downloadsItem.setStatus(DownloadsItem.Status.InProgress);
                        downloadsItem.setProgress(Integer.valueOf((query3.getInt(query3.getColumnIndex("bytes_so_far")) * 100) / i2));
                    } else if (i == 8) {
                        downloadsItem.setStatus(DownloadsItem.Status.Ok);
                        if (downloadsItem.getDate() == null || downloadsItem.getDate().longValue() == 0) {
                            downloadsItem.setDate(Long.valueOf(query3.getLong(columnIndex8)));
                        }
                    } else if (i == 16) {
                        downloadsItem.setStatus(DownloadsItem.Status.Fail);
                        if (downloadsItem.getDate() == null || downloadsItem.getDate().longValue() == 0) {
                            downloadsItem.setDate(Long.valueOf(query3.getLong(columnIndex8)));
                        }
                    }
                }
                arrayList.add(downloadsItem);
                query3.close();
            } while (query.moveToNext());
            query.close();
            writableDatabase.close();
            Collections.sort(arrayList, this.comparator);
            return arrayList;
        }
        query.close();
        writableDatabase.close();
        Collections.sort(arrayList, this.comparator);
        return arrayList;
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        try {
            contextMenu.setHeaderTitle(this.itemList.get(((AdapterView.AdapterContextMenuInfo) contextMenuInfo).position).getName());
            contextMenu.add(0, 1, 0, com.w_19998775.R.string.delete);
        } catch (ClassCastException e2) {
            Log.e("onCreateContextMenu", "bad menuInfo", e2);
        }
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        int i = ((AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo()).position;
        if (menuItem.getItemId() == 1) {
            synchronized (lock) {
                delete(i);
            }
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(com.w_19998775.R.menu.downloads_activity_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
            return true;
        } else if (itemId != com.w_19998775.R.id.delete_all_item) {
            return false;
        } else {
            delete();
            this.downloadsItemAdapter.notifyDataSetChanged();
            return true;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.activityReceiver);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }
}
