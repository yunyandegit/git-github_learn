import streamlit as st
import pickle

lbm_model = pickle.load(open('lbm.pkl','rb'))
def classify(num):
    if num == 1:
        return 'Skipped'
    else:
        return 'Not Skipped'

def main():
    import streamlit as st
    html_temp = """
    <div style="background-color:#ADD8E6">
    <div style="background-color:Black">
    <h2 style="color:white;text-align:center;"> Spotify Skip Prediction </h2>
    </div>

    </div>
    """
    st.markdown(html_temp, unsafe_allow_html=True)
    sp = st.slider('Select session_position', 0,20)
    er = st.selectbox('Select hist_user_behavior_reason_end_remote', (0.0, 1.0))
    v  = st.slider('Select valence', 0.0, 1.0)
    a0 = st.slider('Select acoustic_vector_0', -1.0, 1.0)
    a1 = st.slider('Select acoustic_vector_1', -1.0, 1.0)
    a2 = st.slider('Select acoustic_vector_2', -1.0, 1.0)
    a3 = st.slider('Select acoustic_vector_3', -1.0, 1.0)
    a4 = st.slider('Select acoustic_vector_4', -1.0, 1.0)
    a5 = st.slider('Select acoustic_vector_5', -1.0, 1.0)
    a6 = st.slider('Select acoustic_vector_6', -1.0, 1.0)
    a7 = st.slider('Select acoustic_vector_7', -1.0, 1.0)
    cc = st.selectbox('Select context_type_charts', (0.0, 1.0))
    ep = st.selectbox('Select context_type_editorial_playlist', (0.0, 1.0))
    pp = st.selectbox('Select context_type_personalized_playlist', (0.0, 1.0))
    tr = st.selectbox('Select context_type_radio', (0.0, 1.0))
    uc = st.selectbox('Select context_type_user_collection',(0.0, 1.0))
    sb = st.selectbox('Select hist_user_behavior_reason_start_backbtn', (0.0, 1.0))
    sc = st.selectbox('Select hist_user_behavior_reason_start_clickrow', (0.0, 1.0))
    sf = st.selectbox('Select hist_user_behavior_reason_start_fwdbtn', (0.0, 1.0))

    sr = st.selectbox('Select hist_user_behavior_reason_start_remote', (0.0, 1.0))
    trackdone = st.selectbox('Select hist_user_behavior_reason_start_trackdone', (0.0, 1.0))
    ee  = st.selectbox('Select hist_user_behavior_reason_end_endplay', (0.0, 1.0))
    ef = st.selectbox('hist_user_behavior_reason_end_fwdbtn', (0.0, 1.0))
    el = st.selectbox('hist_user_behavior_reason_end_logout', (0.0, 1.0))
    s = st.slider('Select speechiness', 0.0, 1.0)
    o = st.slider('Select organism', 0.0, 1.0)
    et = st.selectbox('Select hist_user_behavior_reason_end_trackdone', (0.0, 1.0))
    m = st.slider('Select mechanism', 0.0, 1.0)
    sl = st.slider('Select session_length', 10, 20)
    cs = st.selectbox('Select context_switch', (0.0, 1.0))
    bp = st.selectbox('Select no_pause_before_play', (0.0, 1.0))
    sbp = st.selectbox('Select short_pause_before_play',(0.0, 1.0))
    seek_f = st.slider('Select hist_user_behavior_n_seekfwd', 0.0, 60.0)
    seek_b = st.slider('Select hist_user_behavior_n_seekback', 0.0, 150.0)
    shuffle = st.selectbox('Select hist_user_behavior_is_shuffle', (0.0, 1.0))
    hr = st.slider('Select hour_of_day', 0.0, 24.0)
    mode = st.selectbox('Select mode', (0.0, 1.0))
    duration = st.slider('Select duration', 30.0, 1800.0)

    pr = st.selectbox('Select premium', (0.0, 1.0))
    est = st.slider('Select us_popularity_estimate', 90.0, 100.0)
    loud = st.slider('Select loudness', -25.0, 0.0)
    live = st.slider('Select liveness', 0.0, 1.0)
    instrument = st.slider('Select instrumentalness', 0.0, 1.0)
    flat = st.slider('Select flatness', 0.5, 1.0)
    yr = st.slider("Select release_year:", 1950, 2019)
    energy = st.slider('Select energy', 0.0, 1.0)
    dance = st.slider('Select danceability', 0.0, 1.0)
    bounce = st.slider('Select bounciness', 0.0, 1.0)
    beat_str = st.slider('Select beat_strength', 0.0, 1.0)
    acous = st.slider('Select acousticness', 0.0, 1.0)
    rangemean = st.slider('Select dyn_range_mean', 0.0, 20.0)
    tempo = st.slider('Select tempo', 50.0, 220.0)
    st_end = st.selectbox('Select hist_user_behavior_reason_start_endplay', (0.0, 1.0))
    st_play = st.selectbox('Select hist_user_behavior_reason_start_playbtn', (0.0, 1.0))

    inputs=[[sp,er,v,a0,a1,a2,a3,a4,a5,a6,a7,cc,ep,pp,tr,uc,sf,
             sr,trackdone,ee,ef,el,s,o,et,m,sl,cs,bp,sbp,seek_f,seek_b,shuffle,hr,mode,duration,
             pr,est,loud,live,instrument,flat,yr,energy,dance,bounce,beat_str,acous,rangemean,
		tempo,st_end,st_play
             ]]

    if st.button('Predict'):
         st.success(classify(lbm_model.predict(inputs)))
if __name__=='__main__':
    main()
