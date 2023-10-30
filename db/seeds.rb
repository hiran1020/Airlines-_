airlines = Airline.create([
  { 
    name: "Nepal Airlines",
    image_url: "https://imgs.search.brave.com/c8rPA6xDDbaIsPcm9AjaH4RDYArbDnpGDwGpQg5jz4Q/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9uZXBh/bGFpcmxpbmVzLmNv/bS5ucC9zdG9yYWdl/L2Jsb2NrLzIwMjEv/MDIvYm9hcmRpbmdw/YXNzXzE2MTMzOTE1/MjUuanBn"
  }, 
  { 
    name: "Tara Air",
    image_url: "https://imgs.search.brave.com/UnHM-ITQlDLkHg22-2V7UXazknJniZG1iIsUK98YhtE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/dGFyYWFpci5jb20v/aW1hZ2VzL3NsaWRl/c2hvdy94dzJLNy11/bnRpdGxlZC0xLmpw/Zw" },
  { 
    name: "Agni Air",
    image_url: "https://imgs.search.brave.com/0uBBwgxl6IoRZ5YBcHO1C0fS_3vaEgAws_PphPDEmVM/rs:fit:860:0:0/g:ce/aHR0cDovL3d3dy5u/ZXBhbHRpY2tldGlu/Zy5jb20vaW1hZ2Vz/L2FnbmktYWlyLmpw/Zw" 
  }, 
  { 
    name: "Sita Air",
    image_url: "https://imgs.search.brave.com/L4sCL-u-ZeUQnjpbzrH_bhlu2IvftkJSP18262kJDrs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9teXJl/cHVibGljYS5uYWdh/cmlrbmV0d29yay5j/b20vdXBsb2Fkcy9t/ZWRpYS9TaXRhQWly/XzIwMjMwMTI0MTA0/MzM3LmpwZw" 
  }, 
  { 
    name: "Buddha Air",
    image_url: "https://imgs.search.brave.com/hIkikDSkja-Rxg4dgw3X9iQHpFWBSHIuReMWFAJgkrI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy9j/L2M2L0JVRERIQV9B/SVJfQVRSNDJfOU4t/QUlNX0xBTkRJTkdf/QVRfUE9LSEFSQV9B/SVJQT1JUX05FUEFM/X0ZFQl8yMDEzXyg4/NTA2MjQ5MDg5KS5q/cGc" 
  },
  { 
    name: "United Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/United-Airlines.png"
  }, 
  { 
    name: "Southwest",
    image_url: "https://open-flights.s3.amazonaws.com/Southwest-Airlines.png"
  },
  { 
    name: "Delta",
    image_url: "https://open-flights.s3.amazonaws.com/Delta.png" 
  }, 
  { 
    name: "Alaska Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/Alaska-Airlines.png" 
  }, 
  { 
    name: "JetBlue",
    image_url: "https://open-flights.s3.amazonaws.com/JetBlue.png" 
  }, 
  { 
    name: "American Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/American-Airlines.png" 
  },   
])

analysis = Analysis.create([
    {
        title: "Great Airlines",
        description: "i have a comfortable flight",
        score: 8,
        airline: airlines.first
    },
    
    {
        title: "Normal Airlines",
        description: "i enjoy the flight",
        score: 5,
        airline: airlines.first
    },
    {
        title: "Worst Airlines",
        description: "Aweful flight",
        score: 2,
        airline: airlines.first
    }

])